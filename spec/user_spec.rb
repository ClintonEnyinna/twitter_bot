# frozen_string_literal: true

require './lib/user.rb'

describe User do
  let(:clinton) { User.new('francis@gmail.com', 'microverse123') }

  describe '.new' do
    it 'takes two arguments' do
      expect(User).to respond_to(:new).with(2).argument
    end

    it 'takes two arguments of type string' do
      expect(User).to receive(:new).with(instance_of(String), instance_of(String))
      User.new('francis@gmail.com', 'microverse123')
    end
  end

  describe '#login' do
    it 'takes zero argument' do
      expect(clinton).to receive(:login).with(no_args)
      clinton.login
    end
  end
end
