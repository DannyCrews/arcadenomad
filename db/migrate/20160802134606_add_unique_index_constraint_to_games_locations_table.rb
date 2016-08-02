class AddUniqueIndexConstraintToGamesLocationsTable < ActiveRecord::Migration
  def change
    remove_index :games_locations, column: [:game_id, :location_id]
    remove_index :games_locations, column: [:location_id, :game_id]
    add_index :games_locations, [:game_id, :location_id], :unique => true
    add_index :games_locations, [:location_id, :game_id], :unique => true
end end
