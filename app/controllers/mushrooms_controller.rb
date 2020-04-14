class MushroomsController < ApplicationController
    skip_before_action :authorized

    def index
        @mushrooms = Mushroom.all
        render json: @mushrooms
    end
end
