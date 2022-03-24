class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :still_in_production
      t.integer :hours_of_gameplay
      t.references :game_studio, foreign_key: true

      t.timestamps
    end
  end
end