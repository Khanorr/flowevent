require "test_helper"

class BandRidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @band_rider = band_riders(:one)
  end

  test "should get index" do
    get band_riders_url
    assert_response :success
  end

  test "should get new" do
    get new_band_rider_url
    assert_response :success
  end

  test "should create band_rider" do
    assert_difference("BandRider.count") do
      post band_riders_url, params: { band_rider: { band_id: @band_rider.band_id, name: @band_rider.name, version: @band_rider.version } }
    end

    assert_redirected_to band_rider_url(BandRider.last)
  end

  test "should show band_rider" do
    get band_rider_url(@band_rider)
    assert_response :success
  end

  test "should get edit" do
    get edit_band_rider_url(@band_rider)
    assert_response :success
  end

  test "should update band_rider" do
    patch band_rider_url(@band_rider), params: { band_rider: { band_id: @band_rider.band_id, name: @band_rider.name, version: @band_rider.version } }
    assert_redirected_to band_rider_url(@band_rider)
  end

  test "should destroy band_rider" do
    assert_difference("BandRider.count", -1) do
      delete band_rider_url(@band_rider)
    end

    assert_redirected_to band_riders_url
  end
end
