Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  post "/" => 'home#index'
end
