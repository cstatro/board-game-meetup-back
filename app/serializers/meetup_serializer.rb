class MeetupSerializer < ActiveModel::Serializer
  attributes :id, :host, :player_count, :full_game, :start_time, :end_time, :open_seat, :game, :users, :meet_up_members 
end
