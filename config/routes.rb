Rails.application.routes.draw do
  namespace :admin do
    resources :admin_users
  end
  resources :plans
  resources :admin_users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
