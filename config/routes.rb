Rails.application.routes.draw do
  resources :products
  # root 'top#main'
  # get 'top/main'
  
  post 'products/new'
  post 'cart_item/new'
  post 'cart_item/create'
  post 'carts/show'
  delete 'products/destroy'
  resources :products
  root 'products#index'
  get 'top/main'
  
  #get 'cart_items/'
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  resources :products, only: [:index]
  
end
  
  
  #get 'carts/show'
  #get 'cart_items/new'
  #get 'cart_items/create'
  #get 'cart_items/destroy'
  #get 'top/main'
  #get 'products/index'
  #get 'products/new'
  #get 'products/create'
  #get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
#end