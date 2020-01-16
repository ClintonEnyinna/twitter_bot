
class User
  attr_reader :browser, :logged_in, :username
  @@driver

  def initialize(username, password)
    @username = username
    @password = password
    @logged_in = false
    @browser = "firefox"
  end

  def set_browser(browser)
    @browser = browser
  end

  def driver
    @@driver
  end

  public

  def login
    @@driver = Selenium::WebDriver.for @browser.to_sym
    url = "https://twitter.com/login"

    go_to(url)
    fill_info
    @logged_in = false
    sleep 3
  end

  private

  def go_to(url)
    until @logged_in
      begin
        @@driver.navigate.to(url)
        sleep 3
        @logged_in = @@driver.find_element(class: "js-username-field").displayed? || username_input = @@driver.find_element(name: "session[username_or_email]").displayed?
      rescue
        puts "reconnecting..."
        sleep 5
      end
    end
  end

  private

  def fill_info
    begin
      username_input = @@driver.find_element(class: "js-username-field")
      username_input.send_keys(@username)
    rescue
      username_input = @@driver.find_element(name: "session[username_or_email]")
      username_input.send_keys(@username)
    end

    begin
      password_input = @@driver.find_element(class: "js-password-field")
      password_input.send_keys(@password)
      password_input.send_keys(:enter)
    rescue
      password_input = @@driver.find_element(name: "session[password]")
      password_input.send_keys(@password)
      password_input.send_keys(:enter)
    end
  end
end
