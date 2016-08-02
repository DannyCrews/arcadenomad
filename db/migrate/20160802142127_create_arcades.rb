class CreateArcades < ActiveRecord::Migration[5.0]
  def change
    create_table :arcades do |t|
      t.references :game, foreign_key: true
      t.references :location, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
