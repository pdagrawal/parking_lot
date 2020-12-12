class CreateParkingSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_spots do |t|
      t.string :name
      t.string :spot_type
      t.boolean :occupied, default: false

      t.timestamps
    end
  end
end
