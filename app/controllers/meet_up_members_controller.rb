class MeetUpMembersController < ApplicationController
    def create
        member = MeetUpMember.new(member_params)
        member.save
        render json: member
    end

    private
    def member_params
        params.require(:meet_up_member).permit(:user_id,:meetup_id,:host)
    end

end