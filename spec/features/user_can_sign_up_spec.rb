# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign up, log in, log out', type: :feature do
  scenario 'A user is redirected to log in page if not logged in' do
    visit '/'
    expect(page).to have_current_path('/users/sign_in')
    expect(page).to have_selector('#user_email')
    expect(page).to have_selector('#user_password')
  end

  scenario 'A user can sign up' do
    sign_up('antonio@gmail.com')
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'Gets an error message if the email is invalid' do
    visit('/')
    click_link('Sign up')
    fill_in('user_email', with: 'antoniogmail.com')
    fill_in('user_password', with: 'password1234')
    fill_in('user_password_confirmation', with: 'password1234')
    click_button('Sign up')
    expect(page).to have_content('Email is invalid')
  end

  scenario 'A user can log out' do
    sign_up('antonio@gmail.com')
    expect(page).to have_content('Welcome! You have signed up successfully.')
    click_link('Logout')
    expect(page).to have_content('Log in')
  end
end
