class SessionsController < ApplicationController

  def create
      @artist = Artist.find_by(email: session_params[:email])
      if @artist && @artist.authenticate(session_params[:password])
        login!
        render json: {
          logged_in: true,
          artist: @artist
        }
      else
        render json: { 
          status: 401,
          errors: ['no such user', 'verify credentials and try again or signup']
        }
    end
  end

  def artist_logged_in?
    @favorites = current_artist.favorites
    @messages = current_artist.messages
      if logged_in? && current_artist
        render json: {
          logged_in: true,
          artist: @current_artist,
          favorites: @favorites,
          messages: @messages
        }
      else
        render json: {
          logged_in: false,
          message: 'no such artist'
        }
    end
  end

  def destroy
      logout!
      render json: {
        status: 200,
        logged_out: true
      }
  end
  private

  def session_params
      params.require(:artist).permit(:email, :password, :city, :state, :link)
  end

end







