class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :validation_error
    def create
        hero_power = HeroPower.create!(heropower_param)
        render json: hero_power.hero, status: :created
    end

    private

    def validation_error
        render json: { error: ["Validation errors"]}, status: 422
    end

    def heropower_param
        params.permit(:strength, :power, :hero_id)
    end

end