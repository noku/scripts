require 'rubygems'
require 'mechanize'
require 'colorize'
require 'highline/import'

module Mini
  class Crawler
    attr_reader :username, :password, :folder_name
    attr_reader :mechanize, :link, :pages, :id

    def initialize(params)
      @id = params[:id]
      @username = params[:username]
      @password = params[:password]
      @folder_name = params[:folder_name]

      @mechanize ||= Mechanize.new { |agent| agent.follow_meta_refresh = true }
    end

    def run
      login
      parse!
    end

    private

    def parse!
      (1..pages).each do |page|
        PageCrawler.new(mechanize, page_link_for(page), folder_name).run
      end
    end

    def login
      mechanize.get(link) do |page|
        page.form_with(action: login_link) do |form|
          form.username = username
          form.password = password
        end.submit
      end
    end

    def pages
      mechanize.get(link) do |page|
        pagination_text = page.search(".pagination span").first.text
        return pagination_text.scan(/\d/).map(&:to_i).max
      end
    end

    def link
      "http://browse.minitokyo.net/gallery?tid=#{id}&index=3"
    end

    def login_link
      'http://my.minitokyo.net/login'
    end

    def page_link_for(page)
      link<<"&page=#{page}"
    end
  end

  # Due to the structure of website
  # it is required to access 3 pages to download final image
  class PageCrawler
    attr_reader :mechanize, :main_link, :links
    attr_reader :tmp_links, :downlinks, :folder_name

    def initialize(mechanize, link, folder_name)
      @mechanize = mechanize
      @main_link = link
      @folder_name = folder_name

      @links = []
      @tmp_links = []
      @downlinks = []
    end

    def run
      gather_main_links!
      gather_tmp_links!
      gather_download_links!

      save_images
    end

    private

    def gather_main_links!
      mechanize.get(main_link) do |page|
        page.links_with(href: %r{./view/\d*}).each do |link|
          @links << link.href
        end
      end
    end

    def gather_tmp_links!
      links.each do |link|
        mechanize.get(link) do |page|
          page.link_with(href: %r{/download/\d*}) do |l|
            @tmp_links << "http://gallery.minitokyo.net#{l.href}"
            print "|".blue
          end
        end
      end
    end

    def gather_download_links!
      tmp_links.each do |link|
        mechanize.get(link) do |page|
          downlinks << get_image_info_from(page)
          print "|".red
        end
      end
    end

    def get_image_info_from(page)
      source = page.search("#image img").first.attributes["src"]
      name = source.value.scan(%r{\/(\d*\.\w*)\?}).last.first
      { source: source, name: name }
    end

    def save_images
      downlinks.each do |link|
        mechanize.get(link[:source]).save "./#{folder_name}/#{link[:name]}"
        print "|".green
      end
    end
  end
end
