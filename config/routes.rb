Rails.application.routes.draw do
  resources :characteristics
  resources :categories
  resources :locations
  resources :fish, only: [:index, :new, :create]
  resources :anglers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
