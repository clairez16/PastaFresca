Rails.application.routes.draw do
  get 'noodle_orders/new'
  get 'noodle_orders/create'
  devise_for :users
  root to: 'pages#home'

  resources :noodles, only: [:index]
  resources :users, only: [:edit, :update]
  resources :orders, only: [:new, :create, :index]
  resources :noodle_orders, only: [:new, :create]
end
