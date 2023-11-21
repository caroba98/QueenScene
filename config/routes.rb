Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/queens", to: "queens#index", as: :queens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
