class Api::V1::CustomersController < ApplicationController
  
  def index
    if logged_in?
      @customers = current_user.customers
      render json: CustomerSerializer.new(@customers)
    else
      render json: {
        errors: "You must be logged in or customer list is empty."
      }
    end
  end
  
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: CustomerSerializer.new(@customer), status: :accepted
    else
      render json: { errors: @customer.errors.full_messages.to_sentence }
    end
  end

  def update
    @customer = Customer.find_by(id: params[:id])
    @customer.update(customer_params)
    if @customer.save
      render json: CustomerSerializer.new(@customer), status: :accepted
    else
      render json: { errors: @customer.errors.full_messages }
    end
  end

  def destroy
    @customer = Customer.find_by(id: params[:id])
    if @customer
      @customer.destroy
      render json: {message: "Successfully deleted"}
    else
      render json: {errors: @customer.errors.full_messages}
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :id, :user_id, :phone_number, :address, :number_of_pianos)
  end

end
