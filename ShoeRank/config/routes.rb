Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  #delete '/logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/:provider/callback' => 'sessions#oauth_login'

  post '/question_start', to: 'questions#start_page'

  resources :users
  resources :games
  resources :regs
  resources :questions
  resources :sessions
  resources :contests

end
