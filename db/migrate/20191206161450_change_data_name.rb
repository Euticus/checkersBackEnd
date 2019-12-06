class ChangeDataName < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :data, :board_array
  end
end
