class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    if @user
      render json: @user
    else
      render json: "Item not found", status: :not_found
    end
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: :not_found
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    if @user.destroy
      render json: @user
    else
      render json: @user.errors.full_messages
    end
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
end
