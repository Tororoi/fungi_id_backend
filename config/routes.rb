Rails.application.routes.draw do
  resources :observations, only: [:create, :index, :update, :destroy]
  resources :mushrooms, only: [:index]
  resources :users, only: [:create, :index, :update]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/persist', to: 'auth#persist'
end
