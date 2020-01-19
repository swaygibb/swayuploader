Rails.application.routes.draw do
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/index'
  devise_for :users
  root to: "home#index"
  resources :files, only: [:new, :create]
  resources :uploads
end
