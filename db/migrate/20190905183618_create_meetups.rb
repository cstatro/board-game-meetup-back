class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :game_id
      t.integer :max_player
      t.integer :min_player

      t.timestamps
    end
  end
end
