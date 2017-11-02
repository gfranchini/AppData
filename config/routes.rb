Rails.application.routes.draw do

  resources :projects do
    resources :environments
  end

  get 'environments/index'
  get 'environments/dev'
  get 'environments/qa'
  get 'environments/training'
  get 'environments/staging'
  get 'environments/production'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'projects#index'

end
