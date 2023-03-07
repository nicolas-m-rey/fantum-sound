class TracksController < ApplicationController

    def show 

    end

    def create 
        @track =
            Track.new(track_params)

        
    end
end