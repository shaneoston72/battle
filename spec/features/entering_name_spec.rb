require 'spec_helper'

feature 'Entering names' do
  scenario 'Display player names' do
    sign_in_and_play
    expect(page).to have_content('Shane vs. Anne')
  end
end
