require_relative 'scraper_module.rb'
require_relative 'post.rb'
require_relative 'comment.rb'
require 'rubygems'
require 'pry'
require 'nokogiri'
require 'open-uri'


# title = Scraper.get_title
# url = Scraper.get_url
# points = Scraper.get_points
# item_id = Scraper.get_item_id

# post = Post.new(title, url, points, item_id)
# puts post.title
# puts post.url
# puts post.points
# puts post.item_id

comments_array = Scraper.get_content
# puts @post_comments

post.comments(comments_array)

new_comment_on_post = []
new_comment_on_post = Comment.new("Rohit Dhand", "5 hours ago", "hello from lighthouselabs")
post.add_comment(comments_array, new_comment_on_post )





# # comments_array = Scraper.get_comment



# # # # puts new_comment_on_post.name

# # new_comment_on_post = Comment.new("Rohit Dhand", "5 hours ago", "hello from lighthouselabs")
# # comments_array << new_comment_on_post

# # puts 

# puts comments_array[comments_array.length-1].name
# puts comments_array[comments_array.length-1].time_ago
# puts comments_array[comments_array.length-1].content


  
   Nokogiri::HTML(open(ARGV[0]))
      STDOUT.puts "Post title"
      puts Scraper.get_title
      STDOUT.puts "Post URL"
      puts Scraper.get_url
      STDOUT.puts "Post points"
      puts Scraper.get_points
      STDOUT.puts "Post Item ID"
      puts Scraper.get_item_id
      # STDOUT.puts "Comment Names"
      # puts Scraper.get_name
      # STDOUT.puts "Comment Time Ago"
      # puts Scraper.get_time_ago
      # STDOUT.puts "Comment content"
      # puts Scraper.get_content
      STDOUT.puts "All Comments"
      Scraper.get_comment


# # title = Scraper.get_title
# url = Scraper.get_url
# points = Scraper.get_points
# item_id = Scraper.get_item_id

# post = Post.new(title, url, points, item_id)
# puts post.title
# puts post.url
# puts post.points
# puts post.item_id

# post.comments

# comments_comments = post.comments 
# comments_comments = new_comment_on_post
# puts comments_comments[comments_comments.length-1].name
# puts comments_comments[comments_comments.length-1].time_ago
# puts comments_comments[comments_comments.length-1].content


# post = Post.new(@title, @url, @points, @item_id )
# puts post.title 


