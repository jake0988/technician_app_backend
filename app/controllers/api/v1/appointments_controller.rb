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
    @appointment = Appointment.where(user_id: params(user_id), customer_id: params(customer_id), appointment_id: params(customer_id))
    @appointment_id.update(appointment_params)
    if @appointment.save
      render json: AppointmentSerializer.new(@appointment), status: :accepted  
    else
    render json: {errors: @appointment.errors.full_messages}
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:initial_a4, :work_done, :price, :date, :customer_id, :piano_id, :hours, :user_id)
  end
end
