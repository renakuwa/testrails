Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to:'home#index'
  get '/help', to: 'home#help'
  get 'home/about', to: 'home#about'
  get '/contact', to: 'home#contact'

  # get 'tweet/new', to: 'tweet#new'
  
  #本当はpost、画面遷移させるためにゲットを使っている
  #userloginの所は「スラッシュ＋link_toの中の_pathの前の部分」
  
  # get '/user_login', to: 'user#login'
  get '/sign_up', to: 'users#new'
  # get 'user/show', to: 'user#show'
  post '/sign_up', to: 'users#create'

  resources :users
  

  
end


