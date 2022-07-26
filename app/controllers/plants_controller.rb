class PlantsController < ApplicationController
    wrap_parameters format: []

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(plant_params) 
        render json: plant, status: 201
    end

    private
    def plant_params
        params.permit(:id, :name, :image, :price)
    end

end
