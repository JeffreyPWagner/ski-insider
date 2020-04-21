require 'rails_helper'
require_relative "../support/devise"
require 'ruby-debug'

 
RSpec.describe ResortsController, type: :controller do
    login_user
    scenario 'valid inputs' do

    visit new_resort_path
    save_and_open_page

    debugger

    fill_in 'resort_state', with: 'Colorado'
    click_on 'Create Resort'
    visit resorts_path
    expect(page).to have_content('TestResort')
  end
end