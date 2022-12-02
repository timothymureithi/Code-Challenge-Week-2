class HerosController < ApplicationController

    def index
        heros = Hero.all 
        render json: heros 
    end

    def show
        hero = Hero.find_by(id: params[:id])
        if hero
            render json: hero, include: :powers 
        else
            render json: {error: "Hero not found"}, status: :not_found
        end
    end
end
