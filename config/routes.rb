Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :doctors
  resources :patients
  resources :appointments
end
