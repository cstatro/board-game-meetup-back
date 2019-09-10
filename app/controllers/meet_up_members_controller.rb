class MeetUpMembersController < ApplicationController
    def create
        member = MeetUpMember.new(member_params)
        member.save
        render json: member
    end

    private
    def member_params
        params.require(:member).permit(:user_id,:game_id,:host)
    end

end

 
