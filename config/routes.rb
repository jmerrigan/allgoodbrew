Rails.application.routes.draw do
  root 'pages#welcome'
  get '/about', to: 'pages#about'
  get '/profile', to: 'shop_profiles#edit'
  get '/profile/products', to: 'shop_profiles#shop_products'
  get '/profile/orders', to: 'shop_profiles#shop_orders'
  get '/mypurchases', to: 'products#my_purchases'
  get '/products/search', to: 'products#products_search'
  resources :products
  resources :shop_profiles
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
