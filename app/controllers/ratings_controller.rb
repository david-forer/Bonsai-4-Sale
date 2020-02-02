class RatingsController < ApplicationController

    def new 
        @plant = Plant.find_by_id(params[:plant_id])
        @rating = @plant.ratings.build
    end

    def index 

    end
end
