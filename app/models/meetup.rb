class Meetup < ApplicationRecord
    has_many :meet_up_members
    has_many :users, through: :meet_up_members
end
