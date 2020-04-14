Rails.application.routes.draw do
  resources :observations, only: [:create, :index]
  resources :mushrooms, only: [:index]
  resources :users, only: [:create, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/persist', to: 'auth#persist'
end
