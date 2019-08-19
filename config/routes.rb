Rails.application.routes.draw do

  resources :stocks
  resources :users
  resources :transactions
  resources :categories
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  patch 'users/:id/password', to: 'users#update_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
