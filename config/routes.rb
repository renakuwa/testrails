Rails.application.routes.draw do

  
  root to:'home#index'
  get '/help', to: 'home#help'
  get 'home/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  
  
  #userloginの所は「スラッシュ＋link_toの中の_pathの前の部分」
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  
  # get 'user/show', to: 'user#show'
  # get 'tweet/new', to: 'tweet#new'
  resources :users
  

  
end


