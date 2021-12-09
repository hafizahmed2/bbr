Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :questions, only: [:new, :create]
  resources :experiences, only: [:new, :create]
  resources :project_supports, only: [:new, :create]
  resources :bookings, only: [:new, :create]
  resources :faqs, only: [:index]

  root to: 'home#index'
end
