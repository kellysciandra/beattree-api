class ArtistsController < ApplicationController
    def index 
        artists = Artist.all
        render json: artists
    end 

    def new 
        artist = Artist.new 
    end 

    def show
        artist = Artist.find_by(id: params[:id])
        if artist 
            render json: artist, except: [:created_at, :updated_at]
        else 
            render json: {message: 'artist not found'}
        end
    end

    def create 
        artist = Artist.new(artist_params)
        if artist.save
            login!
            render json: artist, except: [:created_at, :updated_at]
        else 
            render json: {message: 'artist not found'}
        end
    end 

    private 

    def artist_params 
        params.require(:artist).permit(:name, :email, :city, :state)
    end 

end
