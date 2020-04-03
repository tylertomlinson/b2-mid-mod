class CreateMechanicRide < ActiveRecord::Migration[5.1]
  def change
    create_table :mechanic_rides do |t|
      t.references :mechanic, foreign_key: true
      t.references :ride, foreign_key: true

      t.timestamps
    end
  end
end
