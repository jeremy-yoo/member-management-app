Rails.application.routes.draw do

  resources :members, only: [:create, :index, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
