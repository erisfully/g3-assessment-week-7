require 'spec_helper'

feature 'Homepage' do
  scenario 'Shows the welcome message' do
    visit '/'

    expect(page).to have_content 'Welcome!'
  end

  scenario 'shows input fields for name and message' do
    visit '/'

    expect(page).to have_content 'Name'
    expect(page).to have_content 'Message'
    expect(page).to have_button 'Add Message'
  end
end


