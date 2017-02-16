Rails.application.routes.draw do

  get '/', to: 'cocktails#index', as: 'root'

  resources :cocktails, only: [:index, :new, :create, :show]

  resources :cocktails do
    resources :doses, only: [:index, :new, :create, :show, :update]
  end

  resources :doses, only: [:destroy]

end
