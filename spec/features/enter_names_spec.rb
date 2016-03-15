# i spec/features/enter_names_spec.rb
require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit '/'

    fill_in :player1, :with => 'Shane'
    fill_in :player2, :with => 'Claudia'
    click_button 'Submit'

    expect(page).to have_content 'Shane vs. Claudia'
  end
end
