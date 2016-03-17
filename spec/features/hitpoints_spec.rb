require 'spec_helper'

feature 'Show hit points' do
  scenario 'Display player one\'s hit points' do
    sign_in_and_play
    expect(page).to have_content('Shane: 0 / 100 HP')
  end
  scenario 'Display player two\'s hit points' do
    sign_in_and_play
    expect(page).to have_content('Anne: 0 / 100 HP')
  end
end
