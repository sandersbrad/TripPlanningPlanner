require 'test_helper'

class TripPlansControllerTest < ActionController::TestCase
  setup do
    @trip_plan = trip_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_plan" do
    assert_difference('TripPlan.count') do
      post :create, trip_plan: {  }
    end

    assert_redirected_to trip_plan_path(assigns(:trip_plan))
  end

  test "should show trip_plan" do
    get :show, id: @trip_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_plan
    assert_response :success
  end

  test "should update trip_plan" do
    patch :update, id: @trip_plan, trip_plan: {  }
    assert_redirected_to trip_plan_path(assigns(:trip_plan))
  end

  test "should destroy trip_plan" do
    assert_difference('TripPlan.count', -1) do
      delete :destroy, id: @trip_plan
    end

    assert_redirected_to trip_plans_path
  end
end
