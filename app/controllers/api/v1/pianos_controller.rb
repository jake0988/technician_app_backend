class Api::V1::PianosController < ApplicationController
    def index
      piano = Piano.all
        user_pianos = piano.where(user_id: params[:id])
        # byebug 
        # user.image = rails_blob_path(piano.images)
        render json: PianoSerializer.new(user_pianos)
    end

    def show
      alert("In Piano show!")
      # byebug
      # appointment_pianos = piano.where()
    end
  
    def create
      byebug

      @piano = Piano.save(piano_params)
      byebug
    
      if piano.save
        render json: PianoSerializer.new(@piano), status: :accepted
      else
        render json: { errors: @piano.errors.full_messages }
      end
    end

    # def show
    #   piano = Piano.all
    #     user_pianos = piano.where(user_id: params[:id], customer_id: params[:customer_id])
    #     render json: PianoSerializer.new(user_pianos)
    # end
  
    def destroy
      piano = Piano.find_by(id: params[:id])
     
      piano.destroy
      render json: {message: "Piano Destroyed"}
    end
  
    private
  
    def piano_params
      params.require(:piano).permit(:make, :model, :serial, :year, :image, {images: []}, :notes, :user_id, :customer_id, :appointment_id)
    end
  
end
