class Api::V1::CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: CustomerSerializer.new(@customers)
  end
  
  def create
    @customer = Customer.new
    if @customer.save
      render json: UserSerializer.new(@user), status: :accepted
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
      render json: UserSerializer.new(@user), status: :accepted
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
    params.require(:user).permit(:first_name, :last_name, :email, :id, :phone_number, :address, :technician_notes)
  end

end
