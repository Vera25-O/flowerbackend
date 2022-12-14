class FlowersController < ApplicationController
    def create 
        flower=Flower.create!(flower_params)
        render json: flower
    end
    def index
        render json: Flower.all, status: :ok
    end

    def update
        flower=Flower.find_by!(id:params[:id])
        flower.update!(description: params[:description],name: params[:name],image: params[:image])
        render json: flower, status: :accepted
    end


    def show
        flower=Flower.find_by(id:params[:id])
        render json: flower, status: :ok
    end

    def destroy
        flower=Flower.find_by(id: params[:id])
        flower.destroy
        head :no_content
    end

    private
    def flower_params
        params.permit(:name,:image,:description)
    end
    def not_found_response
        render json: {error: "Flower not found"}, status: :not_found
    end
end
