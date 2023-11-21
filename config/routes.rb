Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/queens/new', to: 'queens#new', as: :new_queen
  get "/queens", to: "queens#index", as: :queens
  post '/queens', to: 'queens#create'
  get "/queens/:id", to: "queens#show", as: :queen
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
