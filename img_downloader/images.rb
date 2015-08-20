#!/usr/env  ruby

require 'socket'
require 'nokogiri'
require 'fileutils.rb'
require 'colorize'
require 'net/http'
require 'json'

module Downloader
  # Download and save images from Wallbase
  class Images
    attr_reader :logger, :image_links
    JSON_PATH = 'link.json'

    def initialize(logger = Logger)
      # need to add check if backup is present
      @image_links ||= LinkBuilder.new.image_links
      @logger = logger
      @image_counter = 0

      save_backup_json
    end

    def save
      image_links.each { |src| save_image(src) }
    end

    private

    def save_backup_json
      File.write(JSON_PATH, JSON.generate(image_links))
    end

    def file_format_for(src)
      src.match(/\.\w*$/)[0]
    end

    def save_image(link)
      res = Net::HTTP.get_response(URI(link))
      save_to_file(file_format_for(link), res.body) if success?(res)
    end

    def save_to_file(format, data)
      logger.red_notification
      file = File.new("#{@image_counter += 1}#{format}", 'wb')
      file.puts(data)
      file.close
    end

    def success?(response)
      response.is_a?(Net::HTTPSuccess)
    end
  end

  # Find all Image Links from source
  class LinkBuilder
    attr_reader :image_links, :logger

    def initialize(logger = Logger)
      @image_links = []
      @logger = logger

      prepare_images
    end

    def prepare_images
      address_of_links.each { |link| analyze_for_images!(link) }
    end

    def address_of_links
      main_page.css(link_location).map { |link| link['href'] }
    end

    def analyze_for_images!(link)
      logger.green_notification
      wall_for_image(link).each { |img_link| add_to_img_links(img_link) }
    end

    private

    def main_page
      Nokogiri::HTML(main_body)
    end

    def wall_for_image(link)
      Nokogiri::HTML(request_body(link)).css('#showcase>img')
    end

    def add_to_img_links(img_link)
      @image_links << "http:#{img_link['src']}"
    end

    def main_body
      File.read('source.html')
    end

    def link_location
      "section[class='thumb-listing-page']>ul>li>figure>a"
    end

    def request_body(link)
      uri = URI(link)
      res = Net::HTTP.get_response(uri)
      res.body if res.is_a?(Net::HTTPSuccess)
    end
  end

  # Output color line for progress indication
  class Logger
    def self.green_notification
      print '|'.green
    end

    def self.red_notification
      print '|'.red
    end
  end
end

Downloader::Images.new.save
