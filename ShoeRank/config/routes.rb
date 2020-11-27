Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'

  #get 'user_path' = 'users#show'

  get '/auth/:provider/callback' => 'sessions#create'


  resources :reviews
  resources :brands
  resources :shoes do
    resources :reviews, only: [:new, :index]
  end

  resources :users

end
