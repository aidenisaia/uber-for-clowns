class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find_by(id: params[:id])
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    user.save
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    user.username = params[:username] || user.username
    user.email = params[:email] || user.email
    user.password_digest = params[:password_digest] || user.password_digest

    user.save
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    
    render json: {message: "#{User.find_by(id: params[:id]).username} has been destroyed."}
    user.destroy
  end
end
