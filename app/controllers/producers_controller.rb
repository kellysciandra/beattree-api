class ProducersController < ApplicationController
    def index
        producers = Producer.all
    end

    def new
        producer = Producer.new
    end

    def show
        producer = Producer.find_by(:id params[:id])
        if producer 
            render json: producer, except: [:created_at, :updated_at]
        else
            render json: {message: 'producer not found'} 
        end
    end

    def create
        producer = Producer.new(producer_params)
        if producer.save 
            render json: producer, except: [:created_at, :updated_at]
        else 
            render json: {message: 'producer not found'} 
        end
    end

    private

    def producer_params 
        params.require(:producer).permit(:name. :email, :city, :state)
    end
end
