Rails.application.routes.draw do
  resources :submissions
  resources :payment_intents

  root 'submissions#index'
end
