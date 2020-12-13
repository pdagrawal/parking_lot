require 'test_helper'

class ParkingSpotTest < ActiveSupport::TestCase
  test "spot type should be either bike or car" do
    parking_spot = ParkingSpot.new(name: 'Test name', spot_type: 'Bus')
    assert_not parking_spot.save
  end
end
