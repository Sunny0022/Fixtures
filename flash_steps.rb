require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require "#{File.dirname(__FILE__)}/../../features/support/pages/home_page"
Capybara.default_driver = :selenium

Given(/^I am on flash sale site$/) do
  @home = HomePage.new
  @home.load
  click_link('Sign In')
end

And(/^I sign in with (.*) and (.*)$/) do |mail_id, password|
  @home.login(mail_id, password)
  click_button('Login')
end

When(/^I go to the Profile Page$/) do
  click_link('My Profile')
  sleep 2
end

Then(/^I should see the Name of the user$/) do
  @home.profile.has_name?
end

And(/^I should check the user verification$/) do
  @home.profile.has_verify?

end
