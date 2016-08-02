class AddLocationsCountToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :locations_count, :integer
  end
end
