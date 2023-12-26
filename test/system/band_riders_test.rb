require "application_system_test_case"

class BandRidersTest < ApplicationSystemTestCase
  setup do
    @band_rider = band_riders(:one)
  end

  test "visiting the index" do
    visit band_riders_url
    assert_selector "h1", text: "Band riders"
  end

  test "should create band rider" do
    visit band_riders_url
    click_on "New band rider"

    fill_in "Band", with: @band_rider.band_id
    fill_in "Name", with: @band_rider.name
    fill_in "Version", with: @band_rider.version
    click_on "Create Band rider"

    assert_text "Band rider was successfully created"
    click_on "Back"
  end

  test "should update Band rider" do
    visit band_rider_url(@band_rider)
    click_on "Edit this band rider", match: :first

    fill_in "Band", with: @band_rider.band_id
    fill_in "Name", with: @band_rider.name
    fill_in "Version", with: @band_rider.version
    click_on "Update Band rider"

    assert_text "Band rider was successfully updated"
    click_on "Back"
  end

  test "should destroy Band rider" do
    visit band_rider_url(@band_rider)
    click_on "Destroy this band rider", match: :first

    assert_text "Band rider was successfully destroyed"
  end
end
