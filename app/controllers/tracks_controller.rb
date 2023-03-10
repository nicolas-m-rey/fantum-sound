class TracksController < ApplicationController

    def index
        @current_track = Track.find(params[:id])
        @tracks = Track.all
    end

    def create 
        @track = Track.new(track_params)

    end

    def destroy 
        @track = Track.find(params[:id])
        @track.destroy
    end

    private 

    def track_params
        params.require(:track).permit(:name, :audio, :image)
    end

end