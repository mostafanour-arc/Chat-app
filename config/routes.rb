Rails.application.routes.draw do
  resources :messages
  resources :users
  resources :rooms

 root 'rooms#index'
 get 'users/index'
end
