Rails.application.routes.draw do
  get 'authors/index'
  get 'authors/tertua'
  #root "authors#index"
  resources :authors


  get 'books/index'
  resources :books 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
