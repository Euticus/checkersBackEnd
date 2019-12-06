class CreateGames < ActiveRecord::Migration[6.0]
  def change

    create_table :games do |t|
      t.json :json
      t.integer :user_id
      t.timestamps
    end
  end
end
