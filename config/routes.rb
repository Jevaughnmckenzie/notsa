Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/registration/new', to: 'registration#new', as: 'signup'

  root 'welcome#home'


end
