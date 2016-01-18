require_relative 'post.rb'
require_relative 'comment.rb'

require 'rubygems'
require 'pry'
require 'nokogiri'
require 'open-uri'




class Scraper
  attr_accessor :get_title, :get_url, :get_points, :get_item_id, :get_name, :get_time_ago, :get_content
  PAGE_URL = 'https://news.ycombinator.com/item?id=10886306'

  #Visit the team url

  # Returns - Array of Hashes with mentor info.
    doc = Nokogiri::HTML(open(PAGE_URL))

  # def self.get_info
   
  #   @title = doc.css('title').map{|element| element.inner_text}
  #   @url = doc.css('.title > a').map{|element| element['href']}
  #   @points = doc.css('.score').map{|element| element.inner_text}
  #   @id = doc.css('.votelinks a').map{|element| element['href'].scan(/10886306/)}
  #   @name = doc.css('.comhead > a').map{|element|element.inner_text}
  #   @time = doc.css('.age > a').map{|element| element.inner_text}
  #   @content = doc.css('.c00').map{|element| element.inner_text}
  # end
    class << self

  def get_title
    doc = Nokogiri::HTML(open(PAGE_URL))
    title = doc.css('title').map{|element| element.inner_text}  
  end

  def get_url
    doc = Nokogiri::HTML(open(PAGE_URL))
    url = doc.css('.title > a').map {|element| element['href']}
  end

  def get_points
    doc = Nokogiri::HTML(open(PAGE_URL))
    points = doc.css('.score').map {|element| element.inner_text}
  end

  def get_item_id
    doc = Nokogiri::HTML(open(PAGE_URL))
    item_id = doc.css('.votelinks a').map {|element| element['href'].scan(/10886306/)}
    return item_id[1]
  end

  def get_post
    @title = get_title
    @url = get_url
    @points = get_points
    @item_id = get_item_id
  end

  def get_name
    doc = Nokogiri::HTML(open(PAGE_URL))
    name = doc.css('.comhead > a').map {|element| element.inner_text}
  end

  def get_time_ago
    doc = Nokogiri::HTML(open(PAGE_URL))
    time_ago = doc.css('.age > a').map {|element| element.inner_text}
    
  end

  def get_content
    doc = Nokogiri::HTML(open(PAGE_URL))
    content = doc.css('.c00').map {|element| element.inner_text}

  end

  def get_comment

    @post_comments = []
      #get_name.zip((get_time_ago), (get_content)) {|x, y, z| p [x, y, z]}
    names = get_name
    times = get_time_ago
    contents = get_content

    for x in 0..names.length
      temp = Comment.new(names[x],times[x],contents[x])
      @post_comments << temp

    end
    puts @post_comments
  end

   end
end


  #  def self.get_link
  #        doc = Nokogiri::HTML(File.open(PAGE_URL))
  #       doc.css('.comment > .c00 > p').map do |element|
  #         element['href']
  #     end
  #   end








