class ApplicationController < ActionController::API
    

    helper_method :login!, :logged_in?, :current_artist, :authorized_artist?, :logout!

    def login!
        session[:artist_id] = @artist.id
    end

    def logged_in?
        !!session[:artist_id]
    end

    def current_user
        @current_artist ||= Artist.find(session[:artist_id])
        if session[:artist_id]
        end
    end

    def authorized_user?
        @artist == current_artist
    end

    def logout!
        session.clear
    end 

 end
