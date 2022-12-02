class HerosController < ApplicationController
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        heroes = Hero.all
        render json: heroes, include: ['id','name','super_name']
    end

    def show
        hero = find_hero
        render json: hero
    end

    private
    def render_not_found
        render json: { error: "Hero not found" }, status: 404
    end

    def find_hero
        Hero.find(params[:id])
    end

end