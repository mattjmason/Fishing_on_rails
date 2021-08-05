class FishController < ApplicationController

    before_action :redirect_if_not_logged_in?

    layout 'fish'
    def show 

    end

    def index 

    end

    def new 

    end
    def create
        @fish = Fish.new(fish_params)
        if params[:location_id]
            @location = Location.find_by_id(params[:location_id])
        end
        if fish.save 
            redirect_to fish_index_path
        else 
            render :new
        end
    end

    def edit 

    end
    def update 

    end


    def destroy 
        @fish.destroy 
        redirect_to fish_index_path
    end
end
