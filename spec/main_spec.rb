# frozen_string_literal: true

require './bin/twitter_bot.rb'

describe TwitterBot do
  let(:clinton) { TwitterBot.new('francis@gmail.com', 'microverse123') }

  describe '.new' do
    it 'takes two argument' do
      expect(TwitterBot).to respond_to(:new).with(2).argument
    end

    it 'takes two arguments of type string' do
      expect(TwitterBot).to receive(:new).with(instance_of(String), instance_of(String))
      TwitterBot.new('francis@gmail.com', 'microverse123')
    end
  end

  describe '#login' do
    it 'takes zero argument' do
      expect(clinton).to receive(:login).with(no_args)
      clinton.login
    end

    it 'returns no error' do
      expect { clinton.login }.not_to raise_exception
    end
  end

  describe '#search' do
    it 'takes arguments of type string and type fixnum' do
      expect(clinton).to receive(:search).with(instance_of(String), instance_of(Integer))
      clinton.search('ok', 12)
    end
  end

  describe '#like_tweets' do
    it 'takes zero argument' do
      expect(clinton).to receive(:like_tweets).with(no_args)
      clinton.like_tweets
    end
  end

  describe '#total_likes' do
    it 'returns an Integer' do
      expect(clinton.total_likes).to be_an(Integer)
    end
  end
end
