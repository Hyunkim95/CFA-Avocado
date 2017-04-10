require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { bath: @room.bath, bathrooms: @room.bathrooms, capacity: @room.capacity, description: @room.description, parties: @room.parties, pets: @room.pets, price: @room.price, share: @room.share, smoking: @room.smoking, title: @room.title, user_id: @room.user_id, wifi: @room.wifi } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { bath: @room.bath, bathrooms: @room.bathrooms, capacity: @room.capacity, description: @room.description, parties: @room.parties, pets: @room.pets, price: @room.price, share: @room.share, smoking: @room.smoking, title: @room.title, user_id: @room.user_id, wifi: @room.wifi } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
