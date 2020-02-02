Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'
  
  get '/sellers/login' => 'sellers#login', :as => :create_login
  post 'sellers/login' => 'sellers#login'

  resources :ratings
  resources :sellers
  resources :plants do 
    resources :ratings, only: [:new, :index]
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
