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

    user = User.find(params[:id])
    user.update(name: params[:name], username: params[:username], stock_level: params[:stock_level])
    render json: user
  end

  def update_password

    user = User.find(params[:id])
    if user && user.authenticate(params[:old_password])
      user.update(name: user.name, username: user.username, stock_level: user.stock_level, password: params[:new_password])
      render json: user
    else
      render json: {errors: "Old password invalid!"}
    end
  end

  def destroy
    byebug
    user = User.find(params[:id])
    user.destroy
    render json: {message:"deleted"}
  end


end

private
# def user_params
#   params.require(:user).permit(:name,:username,:password,:stock_level)
# end
