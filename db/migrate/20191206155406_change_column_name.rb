class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :json, :data
  end
end
