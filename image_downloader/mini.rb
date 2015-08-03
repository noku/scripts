#!/usr/env  ruby

require 'rubygems'
require 'mechanize'
require 'colorize'

module Mini
  class Page
    attr_reader :m, :main_link, :links, :tmplinks, :downlinks

    def initialize mechanize, link
      @m = mechanize
      @main_link = link
      @links = []
      @tmplinks = []
      @downlinks = []
    end

    def run
      gather_main_links
      gather_second_links
      gather_third_links
      save_to_file
    end

    def gather_main_links
      m.get(main_link) do |page|
        page.links_with(:href => %r{./view/\d*}).each do |link|
          links << link.href
        end
      end
    end

    def gather_second_links
      links.each do |link|
        m.get(link) do |page|
          page.link_with(:href => %r{/download/\d*}) do |l|
            tmplinks << "http://gallery.minitokyo.net#{l.href}"
            print "|".blue
          end
        end
      end
    end

    def gather_third_links
      tmplinks.each do |link|
        m.get(link) do |page|
          source = page.search("#image img").first.attributes["src"]
          name = source.value.scan(/\/(\d*\.\w*)\?/).last.first
          downlinks << { source: source, name: name }
          print "|".red
        end
      end
    end

    def save_to_file
      downlinks.each do |link|
        m.get(link[:source]).save "./#{ARGV[2]}/#{link[:name]}"
        print "|".green
      end
    end
  end

  class Crawler
    attr_reader :m, :link, :pages

    def initialize
      @id = ARGV[3]
      @m = Mechanize.new { |agent| agent.follow_meta_refresh = true }
      @link = "http://browse.minitokyo.net/gallery?tid=#{@id}&index=3"
      @pages = 1
    end

    def run
      login
      gather_num_of_pages
      (1..pages).each { |page| Page.new(m, link<<"&page=#{page}").run }
    end

    def login
     m.get(link) do |page|
      page.form_with(action: 'http://my.minitokyo.net/login') do |form|
        form.username = ARGV[0]
        form.password = ARGV[1]
      end.submit
     end
    end

    def gather_num_of_pages
     m.get(link) do |page|
       pag_text = page.search(".pagination span").first.text
       @pages = pag_text.scan(/\d/).map(&:to_i).max
     end
    end

  end
end

Mini::Crawler.new.run
