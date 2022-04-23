class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments
    render json: AppointmentSerializer.new(@appointments)
  end
  
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      render json:  AppointmentSerializer.new(@appointment)
    else
      render json: {errors: @appointment.errors.full_messages}
    end
  end

  def update
    @appointment = Appointment.find_by(id: params[:id])
    @appointment.update(appointment_params)
    if @appointment.save
      render json: AppointmentSerializer.new(@appointment), status: :accepted  
    else
    render json: {errors: @appointment.errors.full_messages}
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment
      @appointment.destroy
      render json: {message: "Successfully deleted"}
    else
      render json: {errors: @appointment.errors.full_messages}
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:id, :initial_a4, :work_done, :price, :date, :customer_id, :piano_id, :hours, :user_id)
  end
end
