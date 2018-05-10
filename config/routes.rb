Rails.application.routes.draw do
  resources :profiles, except: [:index, :edit ]
  resource  :profile, only: [ :show, :edit]

  devise_for :users
  
  resources :listings
  resources :users, only: [] do
    resources :listings, only: [ :index ]
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges
  root 'pages#home'

  # get 'home', to: 'pages#home'


    
  get 'tours', to: 'listings#index'
  get 'mytours', to: 'listings#show'
  get 'newtour', to: 'listings#new'


end


