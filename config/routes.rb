Rails.application.routes.draw do
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :images
  # Defines the root path route ("/")
  root "categories#index"
  # root "articles#index"
  post "/comments/:id", to: "images#comments"
  post "/commentsc/:id", to: "categories#comments"
  get "/search", to: "searchs#index"
  post "/search", to: "searchs#search"
end
