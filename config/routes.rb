Rails.application.routes.draw do
  get 'categories/index'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#base"
  post '/categories' => 'categories#create'
  get '/category/delete/:id' => 'categories#delete', as: :category_delete
  get '/category/update/:id' => 'categories#update', as: :category_update
  post 'categories/update/:id' => 'categories#apply_update', as: :category_update_apply
end
