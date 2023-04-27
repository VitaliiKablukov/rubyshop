Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")


  root "welcome#index"
   get 'about', to: 'welcome#about'
   get 'overview', to: 'navs#overview'
    get 'orders', to: 'navs#orders'
    get 'orders_description', to: 'navs#orders_description'
end
