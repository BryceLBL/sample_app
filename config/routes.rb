SampleApp::Application.routes.draw do
  get "users/new"

  #get "static_pages/home"
 
  #get "static_pages/help"
  #get "static_pages/about"
  #get "static_pages/contact"
  root to: 'static_pages#home'
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contacts'
  match '/signup',  to: 'users#new'
  resources :users
  
end
