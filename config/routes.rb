Rails.application.routes.draw do

  get 'pages/home'

  get 'pages/goodbye'

  devise_for :users
  resources :load_balancers
  resources :environments
  
  resources :projects do
    resources :environments
  end

  get 'servers', to: 'servers#index'

  root to: 'projects#index'

end
