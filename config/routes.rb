Rails.application.routes.draw do

  # Wallets
  get 'wallets/new', to: 'wallets#new'
  get 'wallets/create'
  get 'wallets/show'

  # Log in
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'

  resource :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
