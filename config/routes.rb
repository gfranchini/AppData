Rails.application.routes.draw do

  resources :projects do
    resources :environments
  end

  get 'servers', to: 'servers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'projects#index'

end
