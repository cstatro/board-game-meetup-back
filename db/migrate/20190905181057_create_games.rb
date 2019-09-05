class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :max_player
      t.integer :min_player
      t.integer :max_playtime
      t.integer :min_playtime
      t.string :image
      t.string :thumbnail
      t.string :rules

      t.timestamps
    end
  end
end
