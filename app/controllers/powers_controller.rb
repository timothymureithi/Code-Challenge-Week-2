class PowersController < ApplicationController
    
    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = find_power
        render json: power
    end

    def update
        power = find_power 
        power.update(power_params)
        render json: power
    end

    private
   
    def power_params
      params.permit(:description)
    end

    def find_power
        Power.find(params[:id])
    end

    
end