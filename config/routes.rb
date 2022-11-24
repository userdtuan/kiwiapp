Rails.application.routes.draw do
  resources :users
  resources :authors
  resources :books
  resources :categories
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
