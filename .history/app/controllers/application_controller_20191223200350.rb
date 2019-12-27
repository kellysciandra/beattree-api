class ApplicationController < ActionController::API
    

    helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!

    def login!
        session[:artist_id] = artist.id
    end

    def logged_in?
        !!session[:artist_id]
    end

    def current_user
        current_user ||= Artist.find(session[:artist_id])
        if session[:artist_id]
        end
    end

    def authorized_user?
        artist == current_user
    end

    def logout!
        session.clear
    end 

 end
