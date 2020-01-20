class FavoritesController < ApplicationController

    def index
        # @artist_id = session[:artist_id]
        @favorites = current_artist.favorites
        render json: {
            favorites: @favorites
        }
    end

    def create
        #    session[:artist_id] = @artist.id
           @favorites = current_artist.favorites.build(favorites_params)
           if @favorites.save
           render json: {
               status: :created,
               favorites: @favorites
           }
        else 
            render json: {
                status: 500
            }
        end
    end


    def show
        @favorites = Favorite.find_by(@favorite.id)
        if @favorites 
            render json:{
                favorites: @favorites
            }
        else 
            render json: {
                status: 500
            }
        end
    end


    private

    def favorites_params
        params.permit(:artist_id, :favorite_artist_id, :link)
    end 
end
