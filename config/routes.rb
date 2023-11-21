Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/queens", to: "queens#index", as: :queens
  get '/queens/new', to: 'queens#new', as: :new_queen
  post '/queens', to: 'queens#create'
  get "/queens/:id", to: "queens#show", as: :queen
  get '/queens/:id/edit', to: 'queens#edit', as: :edit_queen
  patch '/queens/:id', to: 'queens#update'
  put '/queens/:id', to: 'queens#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
