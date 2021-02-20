Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items, only: [:index, :new, :create]
  resources :genres
  resources :prefectures
  resources :scheduleddeliveries
  resources :shippingfees
  resources :statuses
  
  post "items/create", to: "items#create"
end
