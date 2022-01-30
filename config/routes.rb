Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  

  get 'landing', to:'users#landing', as: "landing"
  get 'signup', to:'users#new', as:'signup'
  post 'register', to: 'users#create', as:'register'
  get 'signin', to:'sessions#new', as: 'signin'
  get 'login' , to: 'sessions#create' , as:'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # Defines the root path route ("/")
  # root "articles#index"
end
