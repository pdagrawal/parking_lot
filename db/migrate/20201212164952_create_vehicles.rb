class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :registration_number
      t.boolean :parked

      t.timestamps
    end
  end
end
