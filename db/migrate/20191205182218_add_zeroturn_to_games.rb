class AddZeroturnToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :zeroturn, :boolean
  end
end
