Rails.application.routes.draw do

  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :images
  # Defines the root path route ("/")
  root "categories#index"
end
