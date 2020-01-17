Rails.application.routes.draw do
    resources :beats
    resources :favorites
    resources :sessions, only: [:create]
    resources :artists, only: [:create, :show, :index, :update]

    post '/login', to: 'sessions#create'
    delete '/logout', to: "sessions#destroy"
    get '/logged_in', to: "sessions#artist_logged_in?"
   

  end