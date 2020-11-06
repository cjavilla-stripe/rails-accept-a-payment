Rails.application.routes.draw do
  resources :submissions
  resources :payment_intents
  resources :webhooks, only: [:create]

  root 'submissions#index'
end
