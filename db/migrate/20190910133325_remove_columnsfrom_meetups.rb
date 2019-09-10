class RemoveColumnsfromMeetups < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetups,:date
    remove_column :meetups,:min_player
    remove_column :meetups,:max_player
    add_column :meetups, :player_count, :integer
  end
end
