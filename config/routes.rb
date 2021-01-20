Rails.application.routes.draw do

  root 'home#index'

  get '/orders', to: 'orders#index', as: 'orders'
end
