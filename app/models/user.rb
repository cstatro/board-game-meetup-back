class User < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true
    has_many :user_games
    has_many :games, through: :user_games
end
