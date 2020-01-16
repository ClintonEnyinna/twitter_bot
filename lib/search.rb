# frozen_string_literal: true

class Search
  def initialize(text, driver, num = 2)
    @text = text
    @num = num
    @driver = driver
  end

  def search
    search_url = "https://twitter.com/search?q=#{@text}&src=recent_search_click&f=live"
    @driver.navigate.to(search_url)
    sleep 2
    @num.times do
      puts 'I am scrolling'
      @driver.execute_script('window.scrollTo(0, document.body.scrollHeight)')
      sleep 10
    end
  end
end
