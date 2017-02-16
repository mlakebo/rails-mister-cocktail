Rails.application.routes.draw do
  resources :doses,       only: [:index, :new, :create, :update, :destroy]

  resources :ingredients, only: [:index]

  resources :cocktails,   only: [:index, :show, :new, :create]

  get '/cocktails/:id/doses/new', to: 'doses#new'
end

