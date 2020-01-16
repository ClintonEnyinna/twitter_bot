#!/usr/bin/env ruby

#frozen_string_literal: true

require "selenium-webdriver"
require "./lib/user.rb"
require "./lib/search.rb"
require "./lib/like_tweets.rb"

puts "Type in your username or email: "
username = gets.chomp
puts "Type in your password: "
password = gets.chomp

puts "What do you want to search for?"
topic = gets.chomp

puts "The default page scroll is 2\nDo you want to modify it? (y/n)"
change_scrolls = gets.chomp
if change_scrolls[0].downcase == "y"
  puts "How many page scrolls?"
  scrolls = gets.chomp
else
  scrolls = 2
end

user = User.new(username, password)
puts "The default browser is #{user.browser}.\nDo you want to change it to chrome? (y/n)"
change_browser = gets.chomp
if change_browser[0].downcase == "y"
  browser = "chrome"
  user.use_browser(browser)
end
user.login

item = Search.new(topic, user.driver, scrolls.to_i)
item.search
bot = LikeTweets.new(user.driver)
bot.like_tweets
puts bot.likes
