class AddLocationsCountToState < ActiveRecord::Migration[5.0]
  def change
    add_column :states, :locations_count, :integer
  end
end
