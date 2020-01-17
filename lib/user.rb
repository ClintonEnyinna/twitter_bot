# frozen_string_literal: true

class User
  attr_reader :browser, :logged_in, :username, :driver

  def initialize(username, password)
    @username = username
    @password = password
    @logged_in = false
    @browser = 'firefox'
    @driver = nil
  end

  def use_browser(browser)
    @browser = browser
  end

  def login
    @driver = Selenium::WebDriver.for @browser.to_sym
    @driver.manage.window.maximize
    url = 'https://twitter.com/login'

    go_to(url)
    fill_info
    @logged_in = false
    sleep 3
  end

  private

  def go_to(url)
    until @logged_in
      begin
        @driver.navigate.to(url)
        sleep 3
        @logged_in = true
      rescue StandardError
        puts 'reconnecting...'
        sleep 5
      end
    end
  end

  def fill_info
    begin
      usr = @driver.find_element(xpath: "//div[contains(@class, 'field')]//input[@name='session[username_or_email]']")
      usr.clear
      usr.send_keys(@username)
    rescue StandardError
      usr_inp = @driver.find_element(name: 'session[username_or_email]')
      usr_inp.clear
      usr_inp.send_keys(@username)
    end

    begin
      password_inp = @driver.find_element(xpath: "//div[contains(@class, 'field')]//input[@name='session[password]']")
      password_inp.clear
      password_inp.send_keys(@password)
      password_inp.send_keys(:enter)
    rescue StandardError
      password_inp = @driver.find_element(name: 'session[password]')
      password_inp.clear
      password_inp.send_keys(@password)
      password_inp.send_keys(:enter)
    end
  end
end
