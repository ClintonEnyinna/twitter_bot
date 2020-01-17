# frozen_string_literal: true

require './lib/search.rb'
require 'selenium-webdriver'

describe Search do
  let(:driver) { Selenium::WebDriver.for :chrome }
  let(:item) { Search.new('ruby', driver, 2) }
  describe '.new' do
    it 'takes three arguments' do
      expect(Search).to respond_to(:new).with(3).argument
    end
  end

  describe '#search' do
    it 'accepts no argument' do
      expect(item).to receive(:search).with(no_args)
      item.search
    end
  end
end
