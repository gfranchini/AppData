Rails.application.routes.draw do
  get 'servers/index'

  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'projects#index'

end
