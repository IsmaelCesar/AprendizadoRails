Rails.application.routes.draw do

  resource :coins
  # Wallets
  resources :wallets
  get 'wallets_table', to: 'wallets#get_wallets_table'

  # Coins and Wallets
  resources :coin_wallets

  # Log in
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'

  # Users
  resource :users

  # Users budget
  get 'user_budget_form', to: 'users#get_user_budget_form'
  get 'get_partial_user_budget', to: 'users#get_partial_user_budget'
  put 'update_user_budget', to: 'users#update_user_budget', as: 'user_budget'



  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
