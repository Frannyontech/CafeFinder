require 'test_helper'

class CavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cafe = cafes(:one)
  end

  test "should get index" do
    get cafes_url
    assert_response :success
  end

  test "should get new" do
    get new_cafe_url
    assert_response :success
  end

  test "should create cafe" do
    assert_difference('Cafe.count') do
      post cafes_url, params: { cafe: { address: @cafe.address, closing_hour: @cafe.closing_hour, latitude: @cafe.latitude, longitude: @cafe.longitude, name: @cafe.name, opening_hour: @cafe.opening_hour, user_id: @cafe.user_id } }
    end

    assert_redirected_to cafe_url(Cafe.last)
  end

  test "should show cafe" do
    get cafe_url(@cafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_cafe_url(@cafe)
    assert_response :success
  end

  test "should update cafe" do
    patch cafe_url(@cafe), params: { cafe: { address: @cafe.address, closing_hour: @cafe.closing_hour, latitude: @cafe.latitude, longitude: @cafe.longitude, name: @cafe.name, opening_hour: @cafe.opening_hour, user_id: @cafe.user_id } }
    assert_redirected_to cafe_url(@cafe)
  end

  test "should destroy cafe" do
    assert_difference('Cafe.count', -1) do
      delete cafe_url(@cafe)
    end

    assert_redirected_to cafes_url
  end
end
