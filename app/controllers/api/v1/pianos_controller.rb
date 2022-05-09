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
      @piano = Piano.new(piano_params)
      # byebug
      if piano_params[:image] != "undefined" && piano_params[:image]
        @piano.image.attach(piano_params[:image])
        url = @piano.image.service_url
      @piano.image_url = url
      @piano.save
      end
      if @piano.save
        render json: PianoSerializer.new(@piano), status: :accepted
      else
        render json: { errors: @piano.errors.full_messages }
      end
    end

  
    def destroy
      piano = Piano.find_by(user_id: params[:user_id], id: params[:id])
      if piano && !!piano.image.attached?
        piano.image.purge
      end
      piano.destroy
      render json: {message: "Piano Destroyed"}
    end
  
    private
  
    def piano_params
      params.require(:piano).permit(:make, :model, :serial, :year, :image, :notes, :user_id, :customer_id, :appointment_id)
    end
  
end
