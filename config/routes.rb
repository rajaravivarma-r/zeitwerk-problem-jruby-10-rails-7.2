Rails.application.routes.draw do
  namespace :workzone do
    resources :tasks
  end
  resources :posts
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "posts#index"
end
