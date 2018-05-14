Rails.application.routes.draw do
  resources :purchases, only: [:index, :new, :create]

  root to: 'purchases#index'
end
