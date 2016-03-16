def sign_in_and_play
  visit '/'
  fill_in :player_one, :with => 'Shane'
  fill_in :player_two, :with => 'Anne'
  click_button 'Submit'
end
