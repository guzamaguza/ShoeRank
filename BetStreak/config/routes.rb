Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  #delete '/logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  post '/question_start', to: 'questions#show'

  resources :users
  resources :games
  resources :regs
  resources :questions
  resources :sessions
  resources :contests

end
