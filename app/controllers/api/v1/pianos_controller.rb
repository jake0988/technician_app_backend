class Api::V1::PianosController < ApplicationController
    def index
      piano = Piano.all
        user_pianos = piano.where(user_id: params[:id])
        render json: PianoSerializer.new(user_pianos)
    end
  
    def create
      piano = Piano.create(piano_params)
      if piano.save
        render json: PianoSerializer.new(piano), status: :accepted
      else
        render json: { errors: piano.errors.full_messages }
      end
    end

    # def show
    #   piano = Piano.all
    #     user_pianos = piano.where(user_id: params[:id], customer_id: params[:customer_id])
    #     render json: PianoSerializer.new(user_pianos)
    # end
  
    def destroy
      piano = Piano.find_by(id: params[:id])
      piano.delete
    end
  
    private
  
    def piano_params
      params.require(:piano).permit(:make, :model, :serial, :year, :images, :notes, :user_id, :customer_id)
    end
  
end
