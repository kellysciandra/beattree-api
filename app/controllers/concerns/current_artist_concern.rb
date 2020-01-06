module CurrentArtistConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_artist
  end

  def set_current_artist

    if session[:artist_id]
     
      @current_artist = Artist.find(session[:artist_id])
    end
  end
end