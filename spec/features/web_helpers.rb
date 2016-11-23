def sign_in_and_play
visit('/')
fill_in "name1", :with => "a"
fill_in "name2", :with => "c"
click_button('Submit')
end
