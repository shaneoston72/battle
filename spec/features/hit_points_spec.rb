# i spec/features/enter_names_spec.rb
require 'spec_helper'

feature 'Show hit points' do
  scenario 'show player two\'s hit points' do
    visit '/'

    fill_in :player1, with: 'Shane'
    fill_in :player2, with: 'Claudia'
    click_button 'Submit'
    expect(page).to have_content 'Claudia: 60 HP'
  end
end
