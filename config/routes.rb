Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :products

  resources :orders, only: [:index, :update,]

  resources :order_products, only: [:create, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
