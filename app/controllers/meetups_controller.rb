class MeetupsController < ApplicationController
    def create
        meetup = Meetup.new(meetup_params)
        meetup.save
        render json: meetup
    end

    private
    def meetup_params
        params.require(:meetup).permit(:game_id,:notes,:end_time,:start_time)
    end
end
