class SessionsController < ApplicationController 

    def create
        @artist= Artist.find_by(email: session_params[:email])
      
        if @artist && @artist.authenticate(session_params[:password])
          login!
          render json: {
            logged_in: true,
            artist: @artist
          }
        else
          render json: { 
            status: 401,
            errors: ['no such artist', 'verify credentials and try again or signup']
          }
        end
      end
    def is_logged_in?
        if logged_in? && current_user
          render json: {
            logged_in: true,
            artist: current_user
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
        params.require(:artist).permit(:email, :password)
      end


end 