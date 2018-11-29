# frozen_string_literal: true

def sign_up(user_email)
  visit('/')
  click_link('Sign up')
  fill_in('user_email', with: user_email)
  fill_in('user_password', with: 'password1234')
  fill_in('user_password_confirmation', with: 'password1234')
  click_button('Sign up')
end
