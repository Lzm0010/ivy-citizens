Rails.application.routes.draw do
  root 'customers#index'
  resources :customers
  resources :orders
  # resources :line_items
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
