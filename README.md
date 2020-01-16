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
* Opens the navigator (recommended: Chrome or Firefox)
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
2. You will need to install [Firefox](https://www.mozilla.org/es-MX/firefox/new/) and Firefox driver([gecko driver](https://github.com/mozilla/geckodriver/releases)) or [Chrome](https://www.google.com/intl/es-419/chrome/) and [Chrome's driver](https://chromedriver.chromium.org/). Do not forget to put the driver in your PATH after download. **usr/local/bin** for Linux systems.
3. clone this repository and install all necessarry dependencies.
```ruby
git clone https://github.com/ClintonEnyinna/twitter_bot.git && cd twitter_bot
```
4. Install dependencies.
```ruby
bundle install
```
5. Start the app.
```ruby
bundle install
ruby bin/twitter_bot.rb
```
5. Follow the interactive console interface instructions to fill in your login credentials, browser customization, what you want to search for and how much content you want the bot to like. 

## Things to be aware of
* **Do not forget to download the browser's respective drivers**
* Simply follow the interactive console
* The app was made to only work on Firefox and Chrome.
* Ruby version: **ruby 2.6.5p114**

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
