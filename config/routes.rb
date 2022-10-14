Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  resources :flowers, only:[:index, :show, :patch, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
