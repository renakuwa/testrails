Rails.application.routes.draw do

  
  root to:'home#index'
  
  get '/help', to: 'home#help'
  get 'home/about', to: 'home#about'
  get '/contact', to: 'home#contact'
    
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  
  # get 'user/show', to: 'user#show'
  # get 'tweet/new', to: 'tweet#new'
  resources :users
  resources :microposts, only:[:create, :destroy]
  
end


