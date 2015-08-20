#!/usr/env  ruby

require 'socket'
require 'nokogiri'
require 'fileutils.rb'
require 'colorize'
require 'net/http'
require 'json'

class Wallpapers
  attr_reader :uri, :links, :images

  def initialize
    @uri = URI('http://alpha.wallhaven.cc/search?categories=111&purity=110&ratios=16x9,16x10&sorting=views&order=desc')
    @links = []
    @images = {}
    @counter, @counter_img = 0, 0
  end

  def save
    access_links
    File.write('link.json',  JSON.generate(@images))
    @images.each {|name, src| save_image src.match(/\.\w*$/)[0], src }
  end

  def access_links
    adress_links.each { |link| analyze_for_images(link) }
  end

  def main_body
    File.read("source.html")
  end

  private

  def adress_links
    wall = Nokogiri::HTML(main_body)
    wall.css("section[class='thumb-listing-page']>ul>li>figure>a").map { |link| link['href']}
  end

  def analyze_for_images link
    print "|".green
    wall = Nokogiri::HTML(image_body(link))
    wall.css("#showcase>img").each { |link|  @images[link['data-wallpaper-id']] ="http:" << link['src'] }
  end

  def image_body link
    uri = URI(link)
    res =  Net::HTTP.get_response(uri)
    res.body if res.is_a?(Net::HTTPSuccess)
  end

  def save_image format, link
    uri = URI(link)
    res =  Net::HTTP.get_response(uri)
    save_to_file(format, res.body) if res.is_a?(Net::HTTPSuccess)
  end

  def save_to_file(format, data)
    print "|".red
    # print "[#{@counter_img += 1}|#{@images.size}]".red
    file = File.new("#{@counter_img += 1}#{format}", 'wb')
    file.puts(data)
    file.close
  end

end

Wallpapers.new.save