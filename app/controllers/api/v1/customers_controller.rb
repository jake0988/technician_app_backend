class Api::V1::CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: CustomerSerializer.new(@customers)
  end
  
  def create
    @customer = Customer.new
    if @customer.save
    end

  end

  def show
  end

  def update
  end

  def destroy
  end
end
