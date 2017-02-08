require 'spec_helper'

feature 'DCA site test' do

  # scenario 'can successfully visit home page' do
  #   visit 'https://doctorcareanywhere.com/'
  #   expect(page).to have_content 'Taking care of you'
  # end

  scenario 'can successfully visit "What we do" page' do
    visit 'https://doctorcareanywhere.com/'
    click_link('What we do', :match => :first)
    expect(page.current_url).to eq 'https://doctorcareanywhere.com/what-we-do/' || 'http://doctorcareanywhere.com/what-we-do/'
  end

end
