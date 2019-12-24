Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to:'home#index'

  get 'home/about', to: 'home#about'
  
  get 'tweet/new', to: 'tweet#new'
  #本当はpost、画面遷移させるためにゲットを使っている
  get 'user/create', to: 'user#create'
  get 'user/login', to: 'user#login'
  get 'user/show', to: 'user#show'
end
