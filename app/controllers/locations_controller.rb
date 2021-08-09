class LocationsController < ApplicationController
    before_action :redirect_if_not_logged_in?
    before_action :find_fish, only: [:show, :update, :edit, :destroy]
layout "fish"

def index
    @locations = Location.all
end

def show 
end 

def new 
end 

def create 
end

def edit
end

def update

end

def destroy 
    @location = Location.find_by_id(params[:id])
end 

private 

def fish_params 
    params.require(:fish).permit(:species, :color, :weight, :location_id, location_attributes: [:city, :state])
end

def find_fish
    @fish = Fish.find_by_id(params[:id])
end

end
