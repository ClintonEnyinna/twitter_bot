#!/usr/bin/env ruby

#frozen_string_literal: true

require "selenium-webdriver" # load in the webdriver gem to interact with Selenium
require "io/console"
require "./lib/user.rb"
require "./lib/search.rb"
require "./lib/like_tweets.rb"

puts "Type in your username or email: "
username = gets.chomp
puts "Type in your password: "

password = IO::console.getpass
puts "What do you want to search for?"
topic = gets.chomp

user = User.new(username, password)
puts "The default browser is #{user.browser}.\nDo you want to change it to chrome? (y/n)"
change_browser = gets.chomp
if change_browser[0].downcase == "y"
  browser = "chrome"
  user.set_browser(browser)
end
# user.set_browser("chrome")
user.login

item = Search.new(topic, user.driver)
item.search
bot = LikeTweets.new(user.driver)
bot.like_tweets
puts bot.likes
