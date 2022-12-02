class HerosController < ApplicationController

    def index
    @heroes = Hero.all
    render json: @heroes
    end

    def show
        render json: @hero, serializer: HeroSerializer
    end
    
    private
   
end