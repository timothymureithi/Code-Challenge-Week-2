class HeroPowersController < ApplicationController

    # GET /hero_powers
    def index
        hero_powers = HeroPower.all
        render json: hero_powers
    end


end