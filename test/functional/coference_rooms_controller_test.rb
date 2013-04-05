require 'test_helper'

class CoferenceRoomsControllerTest < ActionController::TestCase
  setup do
    @coference_room = coference_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coference_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coference_room" do
    assert_difference('CoferenceRoom.count') do
      post :create, coference_room: { building_id: @coference_room.building_id, floor: @coference_room.floor, max: @coference_room.max, name: @coference_room.name, phone: @coference_room.phone, room: @coference_room.room, tv: @coference_room.tv, vtc: @coference_room.vtc, whiteboard: @coference_room.whiteboard }
    end

    assert_redirected_to coference_room_path(assigns(:coference_room))
  end

  test "should show coference_room" do
    get :show, id: @coference_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coference_room
    assert_response :success
  end

  test "should update coference_room" do
    put :update, id: @coference_room, coference_room: { building_id: @coference_room.building_id, floor: @coference_room.floor, max: @coference_room.max, name: @coference_room.name, phone: @coference_room.phone, room: @coference_room.room, tv: @coference_room.tv, vtc: @coference_room.vtc, whiteboard: @coference_room.whiteboard }
    assert_redirected_to coference_room_path(assigns(:coference_room))
  end

  test "should destroy coference_room" do
    assert_difference('CoferenceRoom.count', -1) do
      delete :destroy, id: @coference_room
    end

    assert_redirected_to coference_rooms_path
  end
end
