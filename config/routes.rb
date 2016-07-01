Rails.application.routes.draw do
  resources :cars
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
