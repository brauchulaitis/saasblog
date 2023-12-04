Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  get "pricing", to: "static_pages#pricing"
  resources :posts
  post "checkout/create", to: "checkout#create", as: "checkout_create"
  get "checkout/create", to: "checkout#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
