Rails.application.routes.draw do
  root to: "customers#index"

  resources :providers do
    member do
      post 'add_service', as: 'add_service_to'
      post 'remove_service', as: 'remove_service_to'
    end
  end

  resources :articles
  resources :services
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
