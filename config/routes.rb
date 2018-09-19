Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :noodles, only: [:index]
  resources :users, only: [:edit, :update]
end
