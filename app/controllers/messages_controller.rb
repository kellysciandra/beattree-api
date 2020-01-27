class MessagesController < ApplicationController

    def index
        # @artist_id = session[:artist_id]
        @messages = current_artist.messages
        render json: {
            messages: @messages
        }
    end

    def create
           @messages = Message.create!(messages_params)
           if @messages.save
           render json: {
               status: :created,
               messages: @messages
           }
        else 
            render json: {
                status: 500
            }
        end
    end

    private

    def messages_params
        params.permit(:artist_id, :message)
    end 
end
