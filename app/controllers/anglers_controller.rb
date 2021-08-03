class AnglersController < ApplicationController
    def new 
        @angler = Angler.new
    end

    def show
        @angler = Angler.find_by_id(params[:id])
    end
    
end
