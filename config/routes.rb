SampleApp::Application.routes.draw do
  
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :users do
    
    member do
      get :following, :followers
    end
  end

    root  'static_pages#home'
  

  
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signup',  to: 'users#new', via: 'get'


  get 'users/new'

 
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match 'signout',  to: 'sessions#destroy',     via: 'delete'

end
