class HeroPowersController < ApplicationController

    def index
        render json: HeroPower.all, status: :ok
    end

    def create
    end
end
