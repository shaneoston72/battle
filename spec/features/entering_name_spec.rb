require 'spec_helper'

feature 'Entering names' do
  scenario 'Entering player names' do
    visit '/'

    fill_in :player_one, :with => 'Shane'
    fill_in :player_two, :with => 'Anne'

    click_button 'Submit'

    expect(page).to have_content('Shane vs. Anne')
  
  end
end
