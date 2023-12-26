require "application_system_test_case"

class BandPatchesTest < ApplicationSystemTestCase
  setup do
    @band_patch = band_patches(:one)
  end

  test "visiting the index" do
    visit band_patches_url
    assert_selector "h1", text: "Band patches"
  end

  test "should create band patch" do
    visit band_patches_url
    click_on "New band patch"

    fill_in "Band rider", with: @band_patch.band_rider_id
    fill_in "Channel name", with: @band_patch.channel_name
    fill_in "Channel number", with: @band_patch.channel_number
    fill_in "Microphone", with: @band_patch.microphone
    check "Phantom" if @band_patch.phantom
    check "Provided" if @band_patch.provided
    click_on "Create Band patch"

    assert_text "Band patch was successfully created"
    click_on "Back"
  end

  test "should update Band patch" do
    visit band_patch_url(@band_patch)
    click_on "Edit this band patch", match: :first

    fill_in "Band rider", with: @band_patch.band_rider_id
    fill_in "Channel name", with: @band_patch.channel_name
    fill_in "Channel number", with: @band_patch.channel_number
    fill_in "Microphone", with: @band_patch.microphone
    check "Phantom" if @band_patch.phantom
    check "Provided" if @band_patch.provided
    click_on "Update Band patch"

    assert_text "Band patch was successfully updated"
    click_on "Back"
  end

  test "should destroy Band patch" do
    visit band_patch_url(@band_patch)
    click_on "Destroy this band patch", match: :first

    assert_text "Band patch was successfully destroyed"
  end
end
