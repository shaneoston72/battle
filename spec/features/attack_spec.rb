require 'spec_helper'

feature 'Attack opponent' do
  scenario 'attack player two' do
    sign_in_and_play
    click_button('Hug Anne')
    expect(page).to have_content('Shane has hugged Anne')
  end
end
