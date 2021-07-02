class ClownsController < ApplicationController
  def index
    render json: Clown.all
  end

  def show
    render json: Clown.find_by(id: params[:id])
  end

  def create
    clown = Clown.new(
      name: params[:name],
      shoe_size: params[:shoe_size],
      specialty: params[:specialty]
    )
    clown.save
    render json: clown
  end

  def update
    clown = Clown.find_by(id: params[:id])
    clown.name = params[:name] || clown.name
    clown.shoe_size = params[:shoe_size] || clown.shoe_size
    clown.specialty = params[:specialty] || clown.specialty

    clown.save
    render json: clown
  end

  def destroy
    clown = Clown.find_by(id: params[:id])
    
    render json: {message: "#{Clown.find_by(id: params[:id]).name} has been destroyed."}
    clown.destroy
  end
end
