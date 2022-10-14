Rails.application.routes.draw do
  get 'index/images'
  get 'index/new'
  get 'index/show'
  get 'index/create'
  get 'index/edit'
  get 'index/update'
  get 'index/destroy'
  root "categories#index"
  
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
