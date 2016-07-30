class AddNameAndDescriptionToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :name, :string
    add_column :locations, :location, :string
  end
end
