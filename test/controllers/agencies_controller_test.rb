require 'test_helper'

class AgenciesControllerTest < ActionController::TestCase
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agencies)
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post :create, agency: { address: @agency.address, name: @agency.name, phone: @agency.phone }
    end

    assert_response 201
  end

  test "should show agency" do
    get :show, id: @agency
    assert_response :success
  end

  test "should update agency" do
    put :update, id: @agency, agency: { address: @agency.address, name: @agency.name, phone: @agency.phone }
    assert_response 204
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete :destroy, id: @agency
    end

    assert_response 204
  end
end
