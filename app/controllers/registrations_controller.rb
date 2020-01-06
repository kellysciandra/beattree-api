class RegistrationsController < ApplicationController

    def create
      @artist = Artist.create!(
        email: params['artist']['email'],
        password: params['artist']['password'],
        password_confirmation: params['artist']['password'],
        city: params['artist']['city'],
        state: params['artist']['state']
      )
  
      if @artist
        session[:artist_id] = @artist.id
        render json: {
          status: :created,
          artist: @artist
        }
      else
        render json: { status: 500 }
      end
    end
  end