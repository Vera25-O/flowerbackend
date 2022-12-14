Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  # post "/signup", to: "users#create"
  get "/me", to: "users#show"
  delete '/logout', to: 'sessions#destroy'
  resources :flowers, only:[:index, :show, :update, :create, :destroy]
  resources :users, only:[:create, :index, :show]

  # Defines the root path route ("/")
  # root "articles#index"
end
