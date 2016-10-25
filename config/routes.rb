Rails.application.routes.draw do
  root to: 'home#index'
  resources :sessions
  resources :users
  resources :attractions
  resources :rides 

  get '/', to: 'home#index'
  get '/signin' => 'sessions#new', as: 'signin'
  get '/signout' => 'sessions#destroy', as: 'signout'

end
