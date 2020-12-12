class ParkingSpot < ApplicationRecord
  has_many :parkings, dependent: :destroy

  validates :spot_type, inclusion: { in: %w(car bike),
    message: "%{value} is not a valid stop type" }

  # Scopes
  scope :available, -> { where(occupied: false) }

  def free!
    update(occupied: false)
  end

  def occupy!
    update(occupied: true)
  end
end
