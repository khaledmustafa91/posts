Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts, only: [:index]

  namespace :users do
    resources :posts, only: [:index, :create]

    namespace :posts do
      resources :reviews
    end
  end
end
