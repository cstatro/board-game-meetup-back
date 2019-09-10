class ChangeTimeObjectToStrings < ActiveRecord::Migration[5.2]
  def change
    change_column :meetups,:start_time, :string
    change_column :meetups,:end_time, :string
  end
end
