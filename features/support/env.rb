require 'rubygems'
require 'bundler/setup'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'selenium-webdriver'

SERVER_URL  ||= ENV['SERVER_URL']
WEB_BROWSER ||= :chrome

# Local development
Capybara.register_driver WEB_BROWSER do |app|
  Capybara::Selenium::Driver.new(app, browser: WEB_BROWSER)
end

Capybara.configure do |config|
  config.default_driver = WEB_BROWSER
  config.app_host = SERVER_URL
end

Capybara.save_and_open_page_path = ENV['SCREENSHOT_PATH']

Capybara::Screenshot.register_driver(WEB_BROWSER) do |driver, path|
  driver.browser.save_screenshot(path)
end

# HOOKS
Before do |scenario|
  visit SERVER_URL
end

After do |scenario|
end
