require 'spec_helper'

feature 'Game has multiple hug types' do
  scenario 'hug player two' do
    sign_in_and_play
    click_link 'Hug'
    expect(page).to have_content('Shane has hugged Anne')
  end
  scenario 'bear hug player two' do
    sign_in_and_play
    click_link 'Bear Hug'
    expect(page).to have_content('Shane has bear hugged Anne')
  end
  scenario 'Show player two hit points after attack' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(90)
    click_link 'Hug'
    click_link 'OK'
    expect(page).not_to have_content('Anne: 0/100 HP')
    expect(page).to have_content('Anne 90/100 HP')
  end
end
