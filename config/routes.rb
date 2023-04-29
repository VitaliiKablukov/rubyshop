Rails.application.routes.draw do
  resources :userorderdescriptions
  resources :userorders
  resources :order_descriptions
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :items
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "items#index"

  get "overview", to: "items#index"
  post "add_to_cart", to: "cart#add_to_cart"
  get "orders_description", to: "navs#orders_description"
end
