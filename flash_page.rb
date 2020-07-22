# frozen_string_literal: true

require 'capybara/cucumber'
require 'site_prism'
require "#{File.dirname(__FILE__)}/../../../features/support/sections/home_profile"

class HomeProfile < SitePrism::Section

  element :name, '[Strong = "Name"]'
  element :verify, '[Strong = "Verified"]'
end


class HomePage < SitePrism::Page
  set_url 'http://shubham.domain4now.com/'
  element :mail, '[id = "email"]'
  element :pass, '[id = "password"]'
  section :profile, HomeProfile, 'div#flash'

  def login(email_id, pass_wd)
    mail.set email_id
    pass.set pass_wd
  end
end
