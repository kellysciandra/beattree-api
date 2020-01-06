Rails.application.routes.draw do
    resources :sessions, only: [:create]
    resources :artists, only: [:create, :show, :index]

    post '/login', to: 'sessions#create'
    delete '/logout', to: "sessions#destroy"
    get '/logged_in', to: "sessions#artist_logged_in?"
   

  end