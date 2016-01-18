require_relative 'post.rb'
require_relative 'scraper_module.rb'

require 'rubygems'
require 'nokogiri'
require 'pry'
require 'open-uri'


class Comment


    attr_reader :name, :time_ago, :content


    def initialize(name, time_ago, content)
      @name = name
      @time_ago = time_ago
      @content = content
    end

  
  

end

