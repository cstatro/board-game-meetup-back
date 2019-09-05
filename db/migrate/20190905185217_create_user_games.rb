class CreateUserGames < ActiveRecord::Migration[5.2]
  def change
    create_table :user_games do |t|
      t.integer :meet_up_id
      t.integer :user_id
      t.boolean :host

      t.timestamps
    end
  end
end
