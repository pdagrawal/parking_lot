require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home page" do
    get parking_spots_url
    assert_response :success
  end

  test "should get vehicles page" do
    get vehicles_url
    assert_response :success
  end

  test "should get parking history page" do
    get parkings_url
    assert_response :success
  end
end
