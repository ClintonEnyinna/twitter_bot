<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: MIT " src="https://img.shields.io/badge/License-MIT -yellow.svg" />
  </a>
  <a href="https://twitter.com/ClintonEnyinna" target="_blank">
    <img alt="Twitter: ClintonEnyinna " src="https://img.shields.io/twitter/follow/ClintonEnyinna .svg?style=social" />
  </a>
</p>

Twitter_Bot
===========

Hello and welcome to Twitter_Bot. This is one of many projects that were built as a requirement to complete the Ruby section at [Microverse](https://www.microverse.org). It was built with Ruby using [selenium web-driver](https://selenium.dev/projects/) library.

Twitter_bot is an app that helps you put your name out there to get more traffic to your profile and also tweaks twitter's recommendation algorithm so you get more meaningful or related tweets of interest to keep you up to date fast. 

It logs into your account, searches for a particular topic of interest, gives you time to read the tweets and likes them afterwards. All by itselft. It skips tweets already liked by you. If you are too busy to check twitter then Twitter_Bot is perfect for you. Read tweets and stay up to date while you code or do something else.

Features
--------
* Opens the navigator
* Logs into your twitter account
* Handles search queries
* Likes tweets

## Getting Started

Below are the steps you have to follow to get twitter_bot up and running.

Create a twitter account
------------------------
You will need to create and account, that's if you don't already have one. Be careful not to push code with confidential information to github.

Installations
--------------
1. This twitter bot is built with [Ruby](https://www.ruby-lang.org/en/) so you need to have it installed.
2. You will need to install [Firefox](https://www.mozilla.org/es-MX/firefox/new/) and Firefox driver([gecko driver](https://github.com/mozilla/geckodriver/releases)). Do not forget to put the driver in your PATH after download. **usr/local/bin**.
3. clone this repository and install all necessarry dependencies.
```ruby
git clone https://github.com/ClintonEnyinna/twitter_bot.git && cd twitter_bot

```
4. Go to bin/twitter_bot.rb and modify credentials and search query, then save. More detailed explanation on how to use the methods below.
5. Go into the folder and start the app
```ruby
bundle install
ruby bin/twitter_bot.rb
```

## How to Use the Methods

Twitter_bot is very simple to use as it comes with four basic instance methods.
* #login
* #search('ruby')
* #like_tweets
* #total_likes

You have to initialize the TwitterBot class with two arguments ('email/username', 'password') to be able to use the methods mentioned above.
```ruby
user = TwitterBot.new("john@gmail.com", "passsword")
```

**login:**
```ruby
user.login
```
An optional second argument of type integer can be passed if you want to like a lot more tweets.
**search:**
```ruby
user.search("Diseñadores UI/UX", 4)
```
**like tweets:**
```ruby
user.like_tweets
```
**total tweets liked:**
```ruby
puts user.total_likes
```

## Built with
* [Ruby](https://www.ruby-lang.org/en/) - Programming language used
* [Firefox](https://www.mozilla.org/es-MX/firefox/new/) - Web browser
* [Gecko driver](https://github.com/mozilla/geckodriver/releases) - Firefox web driver
* [Selenium web-driver](https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings) - Library to automate web based activities
* [VS Code](https://code.visualstudio.com/) - The code editor used
* [Ubuntu](https://www.linux.org/pages/download/) - Operating System


## 🏠 [Homepage](https://github.com/ClintonEnyinna/twitter_bot)

<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

## Author

👤 **Clinton Enyinna**

* Twitter: [@enyinnaclinton ](https://twitter.com/ClintonEnyinna)
* Github: [@ClintonEnyinna](https://github.com/https:\/\/github.com\/ClintonEnyinna) 
