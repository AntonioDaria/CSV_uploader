require 'rails_helper'

RSpec.feature 'Sign up, log in, log out', type: :feature do
  scenario 'A user is redirected to log in page if not logged in' do
    visit '/'
    expect(page).to have_current_path('/users/sign_in')
    expect(page).to have_selector('#user_email')
    expect(page).to have_selector('#user_password')
  end

  scenario 'a user can sign up' do
      sign_up('antonio@gmail.com')
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end

end
