require 'spec_helper'

feature 'winner' do
  scenario 'a player has reached 100 hug points' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    19.times do
      click_link 'Hug'
      click_link 'OK'
    end
    expect(page).to have_content("Anne is the winner! Yay for Anne!")
  end
end
