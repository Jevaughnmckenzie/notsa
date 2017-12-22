Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 

  # get '/signup/tenants', to: 'tenants/registrations#new'
  # post '/signup/tenants', to: 'tenants/registrations#create'

  namespace :tenants do
    resources :registrations, only: [:new, :create]
    resources :sessions, only: [:new, :create]
    
  end

  resources :tenants, only: [:show, :new, :create]

  resources :'tenants/sessions', only: [:destroy], as: :destroy_tenants_session

  

  # get '/login/tenants', to: 'tenants/sessions#new'
  # post '/login/tenants', to: 'tenants/sessions#create'


  get '/signup/property_managers', to: 'property_managers/registrations#new'
  post '/signup/property_managers', to: 'property_managers/registrations#create'

  # scope '/signup', module: 'property_managers' do
  #   resources :registrations, only: [:new, :create]
  # end

  get '/login/property_managers', to: 'property_managers/sessions#new'
  post '/login/property_managers', to: 'property_managers/sessions#create'
  delete '/property_manager/destroy', to: 'property_managers/sessions#destroy'

  resources :properties, only: [:index, :show, :new, :create]
 
  resources :property_managers, only: [:show]
  resources :maintenance_requests, only: [:index, :new, :create, :show, :update, :destroy]
  resources :invoices, only: [:index, :show, :update]

  get '/contact', to: 'property_managers#contact'

  # resources :'tenants/sessions', only: [:new, :create, :destroy]

  # get '/registration/new', to: 'registration#new'
  # post '/registration', to: 'registration#create'

  root 'welcome#home'


end
