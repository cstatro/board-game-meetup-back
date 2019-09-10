class MeetupsController < ApplicationController
    def create
        meetup = Meetup.new(meetup_params)
        meetup.save
        render json: meetup
    end

    def index
        meetups = Meetup.all 
        render json: meetups
    end

    def user_meetups
        user_meetups = Meetup.where(id: params[:id])
        render json: user_meetups
    end

    private
    def meetup_params
        params.require(:meetup).permit(:game_id,:notes,:end_time,:start_time,:player_count)
    end
end
