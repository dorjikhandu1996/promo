Rails.application.routes.draw do
  resources :orders
  resources :discounts
  resources :discount_types
  resources :products
  resources :categories
  root to:"pages#home"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
