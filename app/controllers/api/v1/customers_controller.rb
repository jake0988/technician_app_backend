class Api::V1::CustomersController < ApplicationController
  
  def index
    # @customers = current_user.customers
    # render json: CustomerSerializer.new(@customers)
    # render json: CustomerSerializer.new @user include: [:name]
    if logged_in?
      @customers = current_user.customers
      # byebug
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

  # def show
  #   @customer = Customer.find_by(id: params[:id])
  #   byebug
  #   if @customer
  #     render json: CustomerSerializer(@customer)
  #   else
  #     render json: {
  #       errors: "Customer not found"
  #     }
  #   end
  # end

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
    # pianos = Piano.where(customer_id: @customer.id)
    # byebug
    # if pianos
    #   pianos.delete(id: *, customer_id: @customer.id)
    # end
    # byebug
    if @customer
      # pianos = Piano.where(customer_id: @customer.id)
      # byebug
      # pianos.destroy
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
