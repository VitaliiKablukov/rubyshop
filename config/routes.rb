Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :items
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "items#index"

  get "overview", to: "items#index"
  get "orders", to: "navs#orders"
  get "orders_description", to: "navs#orders_description"
end
