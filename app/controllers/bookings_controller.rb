class BookingsController < ApplicationController
  def index
    render json: Booking.all
  end

  def show
    render json: Booking.find_by(id: params[:id])
  end

  def create
    booking = Booking.new(
      price: params[:price],
      length: params[:length],
      user_id: params[:user_id],
      clown_id: params[:clown_id]
    )
    booking.save
    render json: booking
  end

  def update
    booking = Booking.find_by(id: params[:id])
    booking.price = params[:price] || booking.price
    booking.length = params[:length] || booking.length
    booking.user_id = params[:user_id] || booking.user_id
    booking.clown_id = params[:clown_id] || booking.clown_id

    booking.save
    render json: booking
  end

  def destroy
    booking = Booking.find_by(id: params[:id])
    
    render json: {message: "#{Booking.find_by(id: params[:id]).username} has been destroyed."}
    booking.destroy
  end
end
