class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  helper_method :login!, :logged_in?, :current_artist, :authorized_artist?, :logout!


  def login!
      session[:artist_id] = @artist.id
  end

  def logged_in?
      !!session[:artist_id]
  end

  def current_artist
      @current_artist = Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def authorized_artist?
      @artist == current_artist
  end

  def logout!
      session.clear
  end

end