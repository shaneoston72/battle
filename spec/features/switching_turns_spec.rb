require 'spec_helper'

feature 'Switching players' do
  scenario 'show first player\'s name' do
    sign_in_and_play
    expect(page).to have_content("Shane's turn")
    # expect(page).to have_content('Anne: 10 /100 HP')
  end
  scenario 'show current player\'s name' do
    sign_in_and_play
    click_button 'Hug'
    click_link 'OK'
    expect(page).to have_content("Anne's turn")
    # expect(page).to have_content('Anne: 10 /100 HP')
  end
end
