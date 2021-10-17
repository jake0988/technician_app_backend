class Api::V1::UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]


  def show
    user_json = UserSerializer.new(@user).serializable_hash.to_json
    # render json: @user
  
    render json: user_json
  end

  # POST /users
  def create
    @user = User.new(user_params)
    # byebug
    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user).serializable_hash.to_json, status: :created
      # , location: @user
    else
      resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :username, :password)
    end
end
