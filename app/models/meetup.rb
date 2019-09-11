class Meetup < ApplicationRecord
    has_many :meet_up_members
    has_many :users, through: :meet_up_members
    belongs_to :game
    
    def open_seat
        self.player_count - self.users.length
    end

    def host
        host = self.meet_up_members.find do |member|
            member.host == true
        end
        if host
            self.users.find {|user| host[:user_id] == user.id}[:name]
        end
    end

    def full_game 
        if (self.open_seat == 0)
            true
        else 
            false
        end
    end 
end
