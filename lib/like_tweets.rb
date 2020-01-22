# frozen_string_literal: true

class LikeTweets
  attr_reader :likes

  def initialize(driver)
    @driver = driver
    @likes = 0
  end

  def like_tweets
    links = []
    tweets = @driver.find_elements(xpath: '//*[@data-testid="tweet"]//a[@dir="auto"]')

    tweets.each { |tweet| links << tweet.attribute('href') }

    links.each do |link|
      @driver.navigate.to(link)
      sleep 4
      begin
        like = @driver.find_element(xpath: '//div[contains(@class, "r-rjfia")]//div[@aria-label="Like"]')
        @likes += 1
        puts 'Hurray! Twitter bot just liked a post!'
        begin
          like.click
          sleep 8
        rescue StandardError
          sleep 60
        end
      rescue StandardError
        sleep(2)
      end
    end
  end
end
