class HeroPowersController < ApplicationController

    def create
        hero_power = HeroPower.create!(heropower_param)
        render json: hero_power.hero, status: :created
    end

    private


end