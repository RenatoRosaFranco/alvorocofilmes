# frozen_string_literal: true
require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'

  devise_for :users
  root to: 'home#index'
  resources :movides,  only: [:index, :show]
  resources :projects, only: [:index, :show]
  namespace :blog do 
    resources :posts, only: [:index, :show]
  end
  resources :contacts,    only: [:create]
  resources :newsletters, only: [:create, :destroy]

  namespace :dashboard do 
    mount Sidekiq::Web => 'sidekiq', as: 'sidekiq'
  end
end
