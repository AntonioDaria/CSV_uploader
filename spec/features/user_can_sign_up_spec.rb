require 'rails_helper'

RSpec.feature 'Sign up, log in, log out', type: :feature do
  scenario 'A user is redirected to log in page if not logged in' do
    visit '/'
    expect(page).to have_current_path('/users/sign_in')
    expect(page).to have_selector('#user_email')
    expect(page).to have_selector('#user_password')
  end

  

end
