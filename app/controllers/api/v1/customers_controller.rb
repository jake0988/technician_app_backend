class Api::V1::CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: CustomerSerializer.new(@customers)
    # byebug
    # if logged_in?
    #   @customers = current_user.customers
     
    #   render json: CustomerSerializer.new(@customers)
    # else
    #   render json: {
    #     error: "You must be logged in or customer list is empty."
    #   }
    # end
  end
  
  def create
    @customer = Customer.new
    if @customer.save
      render json: CustomerSerializer.new(@user), status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: CustomerSerializer.new(@user), status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    # byebug
    @user.delete
  end

  private

  def user_params
    params.require(:customer).permit(:name, :email, :id, :user_id, :phone_number, :address, :number_of_pianos)
  end

end
