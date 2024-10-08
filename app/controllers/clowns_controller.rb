class ClownsController < ApplicationController

  def index
    @clowns = Clown.all
    render :index 
  end 

  def show
    @clown = Clown.find_by(id: params[:id])
    render :show
  end 

  def create
    @clown = Clown.new(
      name: params[:name]
    )
    @clown.save 
  end 

  def update
    @clown = Clown.find_by(id: params[:id])
    @clown.update(
      name: params[:name] || @clown.name
    )
  end 

  def destroy
    @clown = Clown.find_by(id: params[:id])
    @clown.destroy 
    render json: { message: 'the clown has been destroyed!'}, status: :ok
  end 

end
