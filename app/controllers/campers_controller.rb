class CampersController < ApplicationController
    # index, show, create
    before_action :find_camper, only: [:show]

    def index 
        render json: Camper.all, status: :ok
    end

    def show
        render json: @camper, serializer: SingleCamperSerializer,  status: :ok
    end

    def create
        render json: Camper.create!(camper_params), status: :created
    end

    private

    def find_camper
        @camper = Camper.find(params[:id])
    end

    def camper_params
        params.permit([:name, :age])
    end
end
