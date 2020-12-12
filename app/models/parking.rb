class Parking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :parking_spot

  # Scopes
  scope :active, -> { where(end_time: nil) }

  def complete!
    update(end_time: Time.current)
  end
end
