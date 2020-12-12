class Vehicle < ApplicationRecord
  has_many :parkings, dependent: :destroy
  has_many :parking_spots, through: :parkings

  # Scopes
  scope :search, ->(text) { where("lower(registration_number) like '%#{text.downcase}%' OR lower(type) like '%#{text.downcase}%'") }

  def toggle_status
    parked ? unpark : park
    toggle!(:parked)
  end

  def unpark
    parking = parkings.active.first
    parking.parking_spot.free!
    parking.complete!
  end

  def park
    spot = ParkingSpot.available.first
    parkings.create(parking_spot_id: spot.id, start_time: Time.current)
    spot.occupy!
  end
end
