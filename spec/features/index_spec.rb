require 'spec_helper'

feature Battle do

  before(:each) do
    sign_in_and_play
  end

  context 'enter names' do
    it 'tests that filling in the player_1 and player_2 form returns the names' do
      expect(page).to have_content('A vs B')
    end
  end

  context 'hitpoints' do
    it 'checks player 2\'s hitpoints' do
      expect(page).to have_content('Hitpoints: 100')
    end

    it 'returns the confirmation when Hit button gets clicked on' do
      click_button('Hit')
      expect(page).to have_content('A attacked B')
    end
  end
end
