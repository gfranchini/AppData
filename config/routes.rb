Rails.application.routes.draw do

  resources :load_balancers
  resources :environments
  
  resources :projects do
    resources :environments
  end

  get 'servers', to: 'servers#index'

  root to: 'projects#index'

end
