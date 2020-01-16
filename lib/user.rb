# frozen_string_literal: true

class User
  attr_reader :browser, :logged_in, :username

  def initialize(username, password)
    @username = username
    @password = password
    @logged_in = false
    @browser = "firefox"
    @driver = nil
  end

  def use_browser(browser)
    @browser = browser
  end

  attr_reader :driver

  def login
    @driver = Selenium::WebDriver.for @browser.to_sym
    url = "https://twitter.com/login"

    go_to(url)
    fill_info
    @logged_in = false
    sleep 3
  end

  private

  def go_to(url)
    until @logged_in
      @driver.navigate.to(url)
      inputs = @driver.find_element(xpath: "//div[contains(@class, 'field')]//input[@name='session[username_or_email]']")
      begin
        @driver.navigate.to(url)
        sleep 3
        @logged_in = @driver.find_element(xpath: "//div[contains(@class, 'field')]//input[@name='session[username_or_email]']").displayed?
      rescue
        puts "reconnecting..."
        sleep 5
      end
    end
  end

  def fill_info
    username_input = @driver.find_element(xpath: "//div[contains(@class, 'field')]//input[@name='session[username_or_email]']")
    username_input.clear
    username_input.send_keys(@username)

    password_input = @driver.find_element(xpath: "//div[contains(@class, 'field')]//input[@name='session[password]']")
    password_input.clear
    password_input.send_keys(@password)
    password_input.send_keys(:enter)
  end
end
