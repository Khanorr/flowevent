require "test_helper"

class BandPatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @band_patch = band_patches(:one)
  end

  test "should get index" do
    get band_patches_url
    assert_response :success
  end

  test "should get new" do
    get new_band_patch_url
    assert_response :success
  end

  test "should create band_patch" do
    assert_difference("BandPatch.count") do
      post band_patches_url, params: { band_patch: { band_rider_id: @band_patch.band_rider_id, channel_name: @band_patch.channel_name, channel_number: @band_patch.channel_number, microphone: @band_patch.microphone, phantom: @band_patch.phantom, provided: @band_patch.provided } }
    end

    assert_redirected_to band_patch_url(BandPatch.last)
  end

  test "should show band_patch" do
    get band_patch_url(@band_patch)
    assert_response :success
  end

  test "should get edit" do
    get edit_band_patch_url(@band_patch)
    assert_response :success
  end

  test "should update band_patch" do
    patch band_patch_url(@band_patch), params: { band_patch: { band_rider_id: @band_patch.band_rider_id, channel_name: @band_patch.channel_name, channel_number: @band_patch.channel_number, microphone: @band_patch.microphone, phantom: @band_patch.phantom, provided: @band_patch.provided } }
    assert_redirected_to band_patch_url(@band_patch)
  end

  test "should destroy band_patch" do
    assert_difference("BandPatch.count", -1) do
      delete band_patch_url(@band_patch)
    end

    assert_redirected_to band_patches_url
  end
end
