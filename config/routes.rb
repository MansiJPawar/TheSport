Rails.application.routes.draw do
  resources :ecom_orders
  get 'form/index'
  
  root 'ecom_orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
