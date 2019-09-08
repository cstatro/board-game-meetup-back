class RenameColumnOnGamesTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :min_player,:min_players
    rename_column :games, :max_player,:max_players
  end
end
