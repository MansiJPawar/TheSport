Rails.application.routes.draw do
 
  resources :sports
  devise_for :users
  # root 'home#index'
  get 'home/about'
  root 'sports#index'
  
  #get 'home/index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
