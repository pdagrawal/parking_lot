class CreateParkings < ActiveRecord::Migration[6.0]
  def change
    create_table :parkings do |t|
      t.references :parking_spot, foreign_key: true, index: true
      t.references :vehicle, foreign_key: true, index: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
