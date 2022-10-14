class FlowersController < ApplicationController
    # def create 
    #     hero=HeroPower.create!(hero_power_params)
    #     render json: hero.power
    # end
    def index
        render json: Flower.all, status: :ok
    end

    def show
        flower=Flower.find_by!(id:params[:id])
        render json: flower, status: :ok
    end

    private
    def not_found_response
        render json: {error: "Flower not found"}, status: :not_found
    end
end
