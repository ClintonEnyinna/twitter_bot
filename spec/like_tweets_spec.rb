# frozen_string_literal: true

require './lib/like_tweets.rb'
require 'selenium-webdriver'

describe LikeTweets do
  let(:chrome_driver) { Selenium::WebDriver.for :chrome }
  let(:firefox_driver) { Selenium::WebDriver.for :firefox }
  let(:bot) { LikeTweets.new(chrome_driver) }
  describe '.new' do
    it 'takes one arguments' do
      expect(LikeTweets).to respond_to(:new).with(1).argument
    end

    it 'takes one argument of type string' do
      expect(LikeTweets).to receive(:new).with(instance_of(Selenium::WebDriver::Chrome::Driver))
      LikeTweets.new(chrome_driver)
    end

    it 'takes one argument of type string' do
      expect(LikeTweets).to receive(:new).with(instance_of(Selenium::WebDriver::Firefox::Marionette::Driver))
      LikeTweets.new(firefox_driver)
    end
  end

  describe '#like_tweets' do
    it 'takes zero argument' do
      expect(bot).to receive(:like_tweets).with(no_args)
      bot.like_tweets
    end

    it 'returns integer' do
      expect(bot.likes).to eql(0)
    end
  end
end
