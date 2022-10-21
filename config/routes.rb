Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :tags
  devise_for :users
  resources :articles
  resources :brands
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
