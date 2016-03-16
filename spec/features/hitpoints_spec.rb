require 'spec_helper'

feature 'Show hit points' do
  scenario 'Show player two hit points' do
    sign_in_and_play
    expect(page).to have_content('Anne 60/60 HP')
  end
end
