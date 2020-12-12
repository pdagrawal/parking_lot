class ParkingSpot < ApplicationRecord
  validates :spot_type, inclusion: { in: %w(car bike),
    message: "%{value} is not a valid stop type" }
end
