#!/usr/bin/env ruby

#frozen_string_literal: true

require "selenium-webdriver" # load in the webdriver gem to interact with Selenium

class TwitterBot
  @@browser = Selenium::WebDriver.for :firefox #set the navigator to use. Don't forget to download it's corresponding driver
  @@browser.manage.window.maximize
  @@connected = false
  @@links = []
  @@likes = 0

  def initialize(email, password)
    @email = email
    @password = password
  end

  def login
    until @@connected
      begin
        @@browser.navigate.to("https://twitter.com")
        sleep(2)
        input_email = @@browser.find_element(name: "session[username_or_email]")
        input_email.send_keys(@email)

        input_password = @@browser.find_element(name: "session[password]")
        input_password.click
        input_password.send_keys(@password)
        input_password.send_keys(:enter)
        @@connected = true
        sleep(2)
      rescue
        puts "reconnecting..."
        sleep(5)
      end
    end
    puts "connected"
    sleep(2)
  end

  def search(text, num = 2)
    @@browser.navigate.to("https://twitter.com/search?q=#{text}&src=recent_search_click&f=live") #make a query to database for a particular topic. Latest
    sleep(2)
    num.times do
      puts "I am scrolling"
      @@browser.execute_script("window.scrollTo(0, document.body.scrollHeight)") # scroll to bottom of page x number of times to load more content
      sleep 10
    end
  end

  def like_tweets
    tweets = @@browser.find_elements(xpath: '//*[@data-testid="tweet"]//a[@dir="auto"]') #find html elements for tweets

    tweets.each { |tweet| @@links << tweet.attribute("href") }

    @@links.each do |link|
      @@browser.navigate.to(link)
      sleep 2
      begin
        like = @@browser.find_element(xpath: '//*[@data-testid="like"]') #find html element for the like button
        @@likes += 1
        puts "Hurray! Twitter bot just liked a post!"
        begin
          like.click
          sleep 10
        rescue
          sleep 60
        end
      rescue
        sleep(2)
      end
    end
  end

  def total_likes
    @@likes
  end
end

# clinton = TwitterBot.new("francisauta@gmail.com", "microverse123")
# clinton.login
# clinton.search("Diseñadores UI/UX", 10)
# clinton.like_tweets
# puts clinton.total_likes
