class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(name: params[:name],username: params[:username],password: params[:password],stock_level: params[:stock_level])
    if user.save
      render json: user
    else
      render json: {errors:user.errors.full_messages}
    end
  end

  def update
    byebug
    user = User.find(params[:id])
    user.update(name: params[:name], username: params[:username], stock_level: params[:stock_level], password: user.password_digest)
    render json: user
  end
end

private
# def user_params
#   params.require(:user).permit(:name,:username,:password,:stock_level)
# end
