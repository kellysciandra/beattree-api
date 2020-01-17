class FavoritesController < ApplicationController

    def create
        #    session[:artist_id] = @artist.id

           @favorites = current_artist.favorites.build(favorites_params)

           if @favorites.save
           render json: {
               status: :created,
               favorite: @favorites
           }
        else 
            render json: {
                status: 500
            }
        end
    end


    private

    def favorites_params
        params.permit(:artist_id, :favorite_artist_id)
    end 
end
