class CreateJoinTableGameLocation < ActiveRecord::Migration[5.0]
  def change
    create_join_table :games, :locations do |t|
      t.index [:game_id, :location_id]
      t.index [:location_id, :game_id]
    end
  end
end
