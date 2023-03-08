Rails.application.routes.draw do

  devise_for :users
  get "account/show", to: "account#show"
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
