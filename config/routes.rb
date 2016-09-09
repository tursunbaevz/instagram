Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users
  resources :posts
  resources :users
  resources :comments, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
