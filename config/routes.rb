Rails.application.routes.draw do

  root 'home#index'

  resources :shipments
  get '/orders', to: 'orders#index', as: 'orders'
  get '/orders/:id', to: 'orders#show_id', as: 'order'
  get '/shipments/new', to: 'shipments#new', as: 'newshipment'
  get '/shipments/create', to: 'shipments#create', as: 'createshipment'

end
