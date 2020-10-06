Rails.application.routes.draw do

  get 'coin_wallets/show'
  get 'coin_wallets/create'
  resource :coins
  # Wallets
  resources :wallets

  # Log in
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'

  resource :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
