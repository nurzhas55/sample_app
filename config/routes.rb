SampleApp::Application.routes.draw do
  
    root  'static_pages#home'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signup',  to: 'users#new', via: 'get'


  get 'users/new'

 
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match 'signout',  to: 'sessions#destroy',     via: 'get'

end
