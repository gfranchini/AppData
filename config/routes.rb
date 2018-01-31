Rails.application.routes.draw do

  devise_for :users
  resources :load_balancers
  resources :environments
  
  resources :projects do
    resources :environments
  end

  get 'servers', to: 'servers#index'

  root to: 'projects#index'

end
