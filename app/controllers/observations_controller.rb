class ObservationsController < ApplicationController

    def create
        @observation = current_user.observations.create(obs_params)
        if @observation.valid?
            render json: { observation: ObservationSerializer.new(@observation) }, status: :created
        else
            render json: { error: 'failed to create observation' }, status: :not_acceptable
        end
    end

    private

    def obs_params
        params.permit(:location, :image_one, :image_two, :image_three, :image_four, :image_five, :image_six, :mushroom_id)
    end
end
