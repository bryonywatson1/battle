def sign_in_and_play
  visit '/'
  fill_in('player1', with: 'A')
  fill_in('player2', with: 'B')
  click_button('Submit')
end
