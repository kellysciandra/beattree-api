class BeatsController < ApplicationController
   

    # GET /beats
    # GET /beats.json
    def index
        @beats = Beat.all
        render json: @beats
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
        params.permit(:file, :title)
    end
end
