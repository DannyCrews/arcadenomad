class AddCategoryRefToLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :category, index: true
  end
end
