class DeleteStateFromLocations < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :state
  end
end
