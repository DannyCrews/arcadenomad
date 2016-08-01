class AddStateIdToLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :state, foreign_key: true
  end
end
