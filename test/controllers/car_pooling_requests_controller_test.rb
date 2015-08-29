require 'test_helper'

class CarPoolingRequestsControllerTest < ActionController::TestCase
  setup do
    @car_pooling_request = car_pooling_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_pooling_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_pooling_request" do
    assert_difference('CarPoolingRequest.count') do
      post :create, car_pooling_request: { email: @car_pooling_request.email, password: @car_pooling_request.password, prefer_from: @car_pooling_request.prefer_from, prefer_to: @car_pooling_request.prefer_to, travel_id: @car_pooling_request.travel_id, user_id: @car_pooling_request.user_id }
    end

    assert_redirected_to car_pooling_request_path(assigns(:car_pooling_request))
  end

  test "should show car_pooling_request" do
    get :show, id: @car_pooling_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_pooling_request
    assert_response :success
  end

  test "should update car_pooling_request" do
    patch :update, id: @car_pooling_request, car_pooling_request: { email: @car_pooling_request.email, password: @car_pooling_request.password, prefer_from: @car_pooling_request.prefer_from, prefer_to: @car_pooling_request.prefer_to, travel_id: @car_pooling_request.travel_id, user_id: @car_pooling_request.user_id }
    assert_redirected_to car_pooling_request_path(assigns(:car_pooling_request))
  end

  test "should destroy car_pooling_request" do
    assert_difference('CarPoolingRequest.count', -1) do
      delete :destroy, id: @car_pooling_request
    end

    assert_redirected_to car_pooling_requests_path
  end
end
