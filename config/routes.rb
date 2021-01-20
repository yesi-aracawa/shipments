Rails.application.routes.draw do

  root 'home#index'

  resources :shipments
  get '/orders', to: 'orders#index', as: 'orders'
  get '/orders/:id', to: 'orders#show_id', as: 'order'
end
