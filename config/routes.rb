Rails.application.routes.draw do

  resources :environments
  
  resources :projects do
    resources :environments
  end

  get 'servers', to: 'servers#index'

  root to: 'projects#index'

end
