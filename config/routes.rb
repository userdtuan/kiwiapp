Rails.application.routes.draw do
  resources :user_details
  devise_for :users
  resources :order_details
  resources :orders
  resources :users
  resources :authors
  resources :books
  resources :categories
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/order_details/new/:id' => "order_details#new", :as => 'order_detail_add'
  get '/order/checkout/:id' => "orders#checkout", :as => 'checkout_order'
  root "application#index"
end
