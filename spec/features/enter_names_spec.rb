require 'spec_helper'

RSpec.feature "user names", :type => :feature do
  scenario "user submits names" do
    visit('/')
    fill_in "name1", :with => "a"
    fill_in "name2", :with => "c"
    click_button('Submit')
    expect(page).to have_content('a vs. c')
  end
end

RSpec.feature "hit points", :type => :feature do
  scenario "view player 2's hit points" do
    visit('/')
    fill_in "name1", :with => "a"
    fill_in "name2", :with => "c"
    click_button('Submit')
    expect(page).to have_content(': 10HP')
  end
end
