Rails.application.routes.draw do
  resources :users do
    resources :cars, controller: :catagories, type: 'Car'
    resources :motorcycles, controller: :catagories, type: 'Motorcycle'
  end
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
