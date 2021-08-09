class FishController < ApplicationController

    before_action :redirect_if_not_logged_in?

    layout 'fish'
    def show 

    end

    def index 

    end

    def new 
        if params[:location_id] && @location = Location.find_by_id(params[:location_id])
            @fish = @location.fish.build
        else 
            @fish = Fish.new 
            # @fish.build_locations
        end

    end
    def create
        @fish = Fish.new(fish_params)
        if params[:location_id]
            @location = Location.find_by_id(params[:location_id])
        end
        if @fish.save 
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

    private 

def fish_params 
    params.require(:fish).permit(:species, :color, :weight, :location_id, location_attributes: [:city, :state])
end

def find_fish
    @fish = Fish.find_by_id(params[:id])
end

end
