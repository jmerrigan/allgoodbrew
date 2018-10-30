Rails.application.routes.draw do
  root 'pages#welcome'
  get '/profile', to: 'shop_profiles#edit'
  resources :products
  resources :shop_profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
