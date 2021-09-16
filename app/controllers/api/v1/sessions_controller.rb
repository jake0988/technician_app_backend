class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      # byebug
      render json: @user
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
        error: "No one logged in"
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "Successfully logged out"
      
    },

    status: :ok
  end
end