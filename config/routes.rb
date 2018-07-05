Rails.application.routes.draw do
  


  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]


  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'static_pages#home'


  # get 'password_resets/new'

  # get 'password_resets/edit'

  #get 'static_pages/about'
  #get 'static_pages/contact'
  #get 'static_pages/help'
  #get 'users/new'
  #get 'static_pages/home'
  #get 'sessions/new'

end