require 'spec_helper'

feature 'Show hit points' do
  scenario 'Show player two hit points' do
    visit '/'
    fill_in :player_one, :with => 'Shane'
    fill_in :player_two, :with => 'Anne'
    click_button 'Submit'
    expect(page).to have_content('Anne 60/60 HP')

  end
end
