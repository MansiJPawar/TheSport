Rails.application.routes.draw do
  # resources :companies do 
  #   resources :notes, module: :companies
  # end
  # resources :employees do
  # resources :notes , module: :employees
  # end
  
  # root 'companies#index'

  get 'notes/new'
  get 'notes/create'

    resources :companies do
      resources :notes, module: :companies
    end
    resources :employees do
      resources :notes, module: :employees
    end

    root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end