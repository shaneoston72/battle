require 'spec_helper'

feature 'Playing the game' do
  scenario 'displays player names' do
    sign_in_and_play
    expect(page).to have_content('Shane vs. Anne')
  end
  scenario 'shows the starting hug points' do
    sign_in_and_play
    expect(page).to have_content('Shane 0/100 HP Anne 0/100 HP')
  end
  scenario 'has a Hug button' do
    sign_in_and_play
    expect(page).to have_content('Hug')
  end
  scenario 'has a Bear Hug button' do
    sign_in_and_play
    expect(page).to have_content('Bear Hug')
  end
  scenario 'has a Sleep button' do
    sign_in_and_play
    expect(page).to have_content('Sleep')
  end
  # scenario 'has a Cuddle button' do
  #   sign_in_and_play
  #   expect(page).to have_content('Cuddle')
  # end
  # scenario 'has a Purr button' do
  #   sign_in_and_play
  #   expect(page).to have_content('Purr')
  # end
end
