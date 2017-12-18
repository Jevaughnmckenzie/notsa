Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tenants, only: []
  resources :property_managers, only: [:show]

  get '/signup', to: 'tenants/registrations#new'
  post '/signup', to: 'tenants/registrations#create'
  delete '/tenants/destroy', to: 'tenants/sessions#destroy'

  get '/signup/property_managers', to: 'property_managers/registrations#new'
  post '/signup/property_managers', to: 'property_managers/registrations#create'
  delete '/property_manager/destroy', to: 'property_managers/sessions#destroy'

  get '/login', to: 'tenants/sessions#new'
  post '/login', to: 'tenants/sessions#create'

  get '/login/property_managers', to: 'property_managers/sessions#new'
  post '/login/property_managers', to: 'property_managers/sessions#create'

  resources :properties, only: [:index, :show]
 

  # resources :'tenants/sessions', only: [:new, :create, :destroy]

  # get '/registration/new', to: 'registration#new'
  # post '/registration', to: 'registration#create'

  root 'welcome#home'


end
