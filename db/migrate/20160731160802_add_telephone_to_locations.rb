class AddTelephoneToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :telephone, :string, limit: 10
  end
end
