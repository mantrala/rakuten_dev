require_relative '../test_helper'

class AdvertisersControllerTest < ActionController::TestCase
  setup do
    @advertiser = advertisers(:Google)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertisers)
  end

  test "should create advertiser" do
    assert_difference('Advertiser.count') do
      post :create, advertiser: { name: @advertiser.name }
    end

    assert_response 201
  end

  test "should show advertiser" do
    get :show, id: @advertiser
    assert_response :success
  end

  test "should update advertiser" do
    put :update, id: @advertiser, advertiser: { name: @advertiser.name }
    assert_response 204
  end

  test "should destroy advertiser" do
    assert_difference('Advertiser.count', -1) do
      delete :destroy, id: @advertiser
    end

    assert_response 204
  end
end
