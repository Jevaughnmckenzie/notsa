Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tenants, only: []

  get '/tenants/new', to: 'tenants/sessions#new'
  post '/tenants/new', to: 'tenants/sessions#create'

  get '/registration/new', to: 'registration#new'
  post '/registration', to: 'registration#create', as: 'signup'

  root 'welcome#home'


end
