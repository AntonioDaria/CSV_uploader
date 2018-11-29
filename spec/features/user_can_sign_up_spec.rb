require 'rails_helper'

RSpec.feature 'Sign up, log in, log out', type: :feature do
  scenario 'A user is redirected to log in page if not logged in' do
    visit '/'
    expect(page).to have_current_path('/users/sign_in')
    expect(page).to have_selector('#user_email')
    expect(page).to have_selector('#user_password')
  end

  scenario 'A user can sign up' do
    visit('/')
    click_link('Sign up')
    fill_in('user_email', with: "antonio@gmail.com")
    fill_in('user_password', with: 'password1234')
    fill_in('user_password_confirmation', with: 'password1234')
    click_button('Sign up')
   expect(page).to have_content('Welcome! You have signed up successfully.')
 end

end
