Rails.application.routes.draw do
  namespace :workzone do
    resources :tasks
  end
  resources :posts
  root 'posts#index'
end
