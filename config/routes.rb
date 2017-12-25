Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  namespace :tenants do
    resources :registrations, only: [:new, :create]
    resources :sessions, only: [:new, :create]   
  end

  resources :'tenants/sessions', only: [:destroy], as: :destroy_tenant_session
  resources :tenants, only: [:show, :new, :create]

 namespace :property_managers do
    resources :registrations, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end

  resources :'property_managers/sessions', only: [:destroy], as: :destroy_property_manager_session
 
  resources :property_managers, only: [:show] do 
    resources :maintenance_requests, only: [:index]
    resources :invoices, shallow: true
    resources :properties, only: [:index, :new, :create, :destroy]
    resources :tenants, shallow: true
  end

  resources :tenants, only: [:show] do 
    resources :maintenance_requests, shallow: true
    resources :invoices, only: [:index]
  end

  resources :properties, only: [:show]

  resources :maintenance_requests, only: [:index, :new, :create, :show, :update, :destroy]
  resources :invoices, only: [:index, :show, :update]

  get '/contact', to: 'property_managers#contact'

  root 'welcome#home'


end
