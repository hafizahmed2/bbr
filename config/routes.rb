Rails.application.routes.draw do
  resources :questions, only: [:new, :create]
  resources :experiences, only: [:new, :create]
  resources :project_supports, only: [:new, :create]
  resources :bookings, only: [:new, :create]

  root to: 'home#index'
end
