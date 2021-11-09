Rails.application.routes.draw do
  resources :questions, only: [:new, :create]

  root to: 'home#index'
end
