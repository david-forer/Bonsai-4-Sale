class PlantsController < ApplicationController

def new 
    @plant = Plant.new
    # @plant.build_seller
end


def index
     @plants = Plant.all
end


def create 
    @plant = Plant.create(plant_params)
    # @plant.seller_id = session[:user_id]
    if @plant.save
        session[:plant_id] = @plant.id
        redirect_to plant_path(@plant)
    else
        render :new
    end
end

def show 
    @plant = Plant.find_by_id(params[:plant_id])
    redirect_to '/' if !@plant
end

private

  def plant_params
    params.require(:plant).permit(:name, :description, :seller_id, :plant_id, :price)
  end


end

