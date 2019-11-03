Rails.application.routes.draw do
  root to: "products#index"

  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new', as: 'new_product'
  get '/products/:id', to: 'products#show', as: 'product'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
