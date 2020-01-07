class BeatsController < ApplicationController
    include Rails.application.routes.url_helpers

    # GET /beats
    # GET /beats.json
    def index
        render json: Beat.all.with_attached_image
    end 

    def show 
        beat = Beat.find_by(id: params[:id])
        if beat.present?
            render json: beat.file
        else
            head :not_found
        end 
    end

    # POST /beats
    #POST /beats.json
    def create
        @beat = Beat.create!(beat_params)
        if @beat.save 
            render json: {beat: @beat}
        else
            render json: {message: 'nope'}
        end 
    end
 
    private 


    def beat_params
        params.permit(:title, :file, :artist_id)
    end
end