class Api::V1::CustomersController < ApplicationController
  
  def index
    # @customers = current_user.customers
    # render json: CustomerSerializer.new(@customers)
    # render json: CustomerSerializer.new @user include: [:name]
    if logged_in?
      @customers = current_user.customers
      render json: CustomerSerializer.new(@customers)
    else
      render json: {
        error: "You must be logged in or customer list is empty."
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

  def show
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
    @user = User.find_by(id: params[:id])
    # byebug
    @user.delete
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :id, :user_id, :phone_number, :address, :number_of_pianos)
  end

end
