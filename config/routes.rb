Rails.application.routes.draw do

  root 'home#index'

  resources :shipments
  get '/orders', to: 'orders#index', as: 'orders'
end
