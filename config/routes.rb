Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tenants, only: []

  get '/signup', to: 'tenants/registrations#new'
  post '/signup', to: 'tenants/registrations#create'
  delete '/tenants/destroy', to: 'tenants/sessions#destroy'

  get '/login', to: 'tenants/sessions#new'
  post '/login', to: 'tenants/sessions#create'


  # resources :'tenants/sessions', only: [:new, :create, :destroy]

  # get '/registration/new', to: 'registration#new'
  # post '/registration', to: 'registration#create'

  root 'welcome#home'


end
