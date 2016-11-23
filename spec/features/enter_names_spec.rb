require 'spec_helper'

RSpec.feature "user names", :type => :feature do
  scenario "user submits names" do
    sign_in_and_play
    expect(page).to have_content('a vs. c')
  end
end

RSpec.feature "hit points", :type => :feature do
  scenario "view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content(': 10HP')
  end
end

RSpec.feature "attacking player 2", :type => :feature do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Player 2 was attacked')
  end
end
