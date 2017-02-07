require 'spec_helper'
# require 'selenium-webdriver'

# This is me trying to point it to the old version of Firefox I downloaded so that I wouldn't have to uninstall my current version. It didn't work, so I unisntalled Firefox 51.0.1
# Selenium::WebDriver::Firefox::Binary.path=/Users/rory/Downloads/firefox-sdk/bin/Firefox.app

feature 'DCA site test' do
  scenario 'can successfully visit home page' do
    visit 'https://doctorcareanywhere.com/'
    expect(page).to have_content 'Taking care of you'
  end
end


# visit '/links/new'
#   fill_in 'title', :with => 'title_here'
#
#   click_link
