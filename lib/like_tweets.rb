class LikeTweets
  attr_reader :likes

  def initialize(driver)
    @driver = driver
    @likes = 0
  end

  def like_tweets
    links = []
    tweets = @driver.find_elements(xpath: '//*[@data-testid="tweet"]//a[@dir="auto"]') #find html elements for tweets

    tweets.each { |tweet| links << tweet.attribute("href") }

    links.each do |link|
      @driver.navigate.to(link)
      sleep 2
      begin
        like = @driver.find_element(xpath: '//div[contains(@class, "r-rjfia")]//*[@aria-label="Like"]') #find html element for the like button
        @likes += 1
        puts "Hurray! Twitter bot just liked a post!"
        begin
          like.click
          sleep 10
        rescue
          sleep 60
        end
      rescue
        sleep(2)
      end
    end
  end
end