require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, :event => { }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    event = Factory.create(:event, :location_name  => "location_name234", :description =>  "description" )
    get :show, :id => event_id
    assert_response :success
  end

  test "should get edit" do
    event = Factory.create(:event, :location_name  => "location_name234", :description =>  "description" )
    get :edit, :id => event_id
    assert_response :success
  end

  test "should update event" do
    event = Factory.create(:event, :location_name  => "location_name234", :description =>  "description" )
    put :update, :id => event_id, :event => { }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    event = Factory.create(:event, :location_name  => "location_name234", :description =>  "description" )
    assert_difference('Event.count', -1) do
      delete :destroy, :id => event_id
    end

    assert_redirected_to events_path
  end
end
