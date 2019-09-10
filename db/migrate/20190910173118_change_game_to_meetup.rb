class ChangeGameToMeetup < ActiveRecord::Migration[5.2]
  def change
    rename_column :meet_up_members, :game_id, :meetup_id
  end
end
