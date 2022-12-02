class PowersController < ApplicationController
    
    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = find_power
        render json: power
    end

    private
    def
    end
    
    
end