#frozen_string_literal: true

require "./bin/twitter_bot.rb"

describe TwitterBot do
  let(:clinton) { TwitterBot.new("francis@gmail.com", "microverse123") }

  describe ".new" do
    it "takes two argument" do
      expect(TwitterBot).to respond_to(:new).with(2).argument
    end

    it "takes two arguments of type string" do
      expect(TwitterBot).to receive(:new).with(instance_of(String), instance_of(String))
      TwitterBot.new("francis@gmail.com", "microverse123")
    end
  end

  describe "#search" do
    it "takes arguments of type string and type fixnum" do
      expect(clinton).to receive(:search).with(instance_of(String), instance_of(Fixnum))
      clinton.search("ok", 12)
    end
  end
end
