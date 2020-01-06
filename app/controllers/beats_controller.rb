class BeatsController < ApplicationController
    include Rails.application.routes.url_helpers

    # GET /beats
    # GET /beats.json
    def index
        @beats = Beat.all
        render json: {beats: @beats}, include: :file
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
        beat = Beat.new(beat_params)
        if beat.save 
            render json: {message: 'it worked'}
        end 
    end
 
    private 


    def beat_params
        params.permit(:title, :file)
    end
end
