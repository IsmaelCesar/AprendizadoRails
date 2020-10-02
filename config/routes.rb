Rails.application.routes.draw do
  # get 'user/new'
  # get 'user/create'
  # get 'user/edit'
  # get 'user/update'
  # get 'user/destroy'
  resource :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
