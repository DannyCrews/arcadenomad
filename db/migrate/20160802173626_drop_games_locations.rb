class DropGamesLocations < ActiveRecord::Migration[5.0]
  def change
    drop_table :games_locations
  end
end
