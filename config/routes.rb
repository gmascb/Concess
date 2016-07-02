Rails.application.routes.draw do
# root to: 'users#index'
# root to: 'devise/sessions#index'
  
  devise_for :users
  devise_scope :user do
    
  authenticated :user do
    root 'home#index' , as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
    end
end

  
  resources :users
  resources :cars
end