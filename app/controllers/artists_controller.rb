class ArtistsController < ApplicationController
    def index 
        @artists = Artist.all
        if @artists
            render json: {
                artists: @artists
            }
        else 
            render json: {
                status: 500
            }
         end
    end 

    def show
        @artist = Artist.find_by(params[:id])
        if @artist 
            render json:{
                artist: @artist
            }
        else 
            render json: {
                status: 500
            }
        end
    end

    def create 
        @artist = Artist.create(artist_params)
        if @artist.save
            session[:artist_id] = @artist.id
            render json:{
                status: :created,
                artist: @artist
            }

        else 
            render json: {
                artist: @artist,
                status: 500
            }
        end
    end 

    private 

    def artist_params 
        params.require(:artist).permit(:email, :password, :city, :state)
    end 

end
