Rails.application.routes.draw do
  resources :profiles
  resources :listings
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges
  root 'pages#home'

  # get 'home', to: 'pages#home'
  require 'carrierwave/orm/activerecord'
end
