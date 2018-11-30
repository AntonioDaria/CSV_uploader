# frozen_string_literal: true

Rails.application.routes.draw do
  get 'books/index'
  get 'books/import'
  devise_for :users
  get 'home/index'

  resources :books do
    collection { post :import }
  end

  root 'books#index'
end
