class CreateMeetUpMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :meet_up_members do |t|
      t.integer :user_id
      t.integer :game_id
      t.boolean :host

      t.timestamps
    end
  end
end
