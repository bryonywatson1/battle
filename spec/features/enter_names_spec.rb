require 'spec_helper'

RSpec.feature "user names", :type => :feature do
  scenario "user submits names" do
    visit('http://localhost:4567/')
    fill_in "name1", :with => "a"
    fill_in "name2", :with => "b"
    click_button('Submit')
    expect(page).to have_content('a vs. b')
  end
end
