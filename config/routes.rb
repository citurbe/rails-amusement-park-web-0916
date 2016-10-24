Rails.application.routes.draw do
  root to: 'home#index'
  resources :sessions
  resources :users

  get '/', to: 'home#index'
  get '/signin', to: 'users#new'

end
