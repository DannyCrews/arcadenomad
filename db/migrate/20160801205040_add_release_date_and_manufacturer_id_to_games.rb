class AddReleaseDateAndManufacturerIdToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :release_date, :integer
    add_reference :games, :manufacturer, foreign_key: true
  end
end
