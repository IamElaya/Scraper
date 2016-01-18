
require_relative 'comment.rb'
require_relative 'scraper_module.rb'

require 'rubygems'
require 'nokogiri'
require 'pry'
require 'open-uri'




class Post
   
    attr_reader :title, :url, :points, :item_id, :comments, :add_comment

    def initialize(title, url, points, item_id)
        @title = title
        @url = url
        @points = points
        @item_id = item_id
    end

    def comments(array)
        puts array
    end

    def add_comment(array, comment)
        # comment = Comment.new
        array<<comment
    end
end


