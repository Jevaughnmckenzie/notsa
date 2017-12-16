Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tenants, only: [:new, :create]

  get '/registration/new', to: 'registration#new'
  post '/registration', to: 'registration#create', as: 'signup'

  root 'welcome#home'


end
