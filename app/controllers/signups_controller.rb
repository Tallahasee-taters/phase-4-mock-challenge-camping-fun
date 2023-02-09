class SignupsController < ApplicationController
    #create

    def create
        render json: Signup.create!(params[:time, :camper_id, :activity_id]), status: :created
    end
end
