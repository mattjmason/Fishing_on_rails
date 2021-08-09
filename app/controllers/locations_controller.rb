class LocationsController < ApplicationController
    before_action :redirect_if_not_logged_in?
    before_action :find_fish, only: [:show, :update, :edit, :destroy]
layout "fish"

def index
    @locations = Location.all
end

def show 
    @location = Location.find_by_id(params[:id])
end 

def new 
    @location = Location.new
end 

def create 
    @location = Location.new(location_params)
    if @location.save 
        redirect_to locations_path
    else 
        render :new
    end
end

def edit
    @location = Location.find_by_id(params[:id])
end

def update

end

def destroy 
    @location = Location.find_by_id(params[:id])
end 

private 

def location_params 
    params.require(:location).permit(:city, :state, fish_attributes: [:species, :color, :weight])

end

end
