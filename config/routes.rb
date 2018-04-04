Rails.application.routes.draw do
  resources :restaurants, except: [ :edit, :update, :destroy ] do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show ]

  root to: "restaurants#index"
end
