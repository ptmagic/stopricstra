require 'test_helper'

class MessagetoldsControllerTest < ActionController::TestCase
  setup do
    @messagetold = messagetolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messagetolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messagetold" do
    assert_difference('Messagetold.count') do
      post :create, messagetold: { msg: @messagetold.msg, user: @messagetold.user }
    end

    assert_redirected_to messagetold_path(assigns(:messagetold))
  end

  test "should show messagetold" do
    get :show, id: @messagetold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messagetold
    assert_response :success
  end

  test "should update messagetold" do
    put :update, id: @messagetold, messagetold: { msg: @messagetold.msg, user: @messagetold.user }
    assert_redirected_to messagetold_path(assigns(:messagetold))
  end

  test "should destroy messagetold" do
    assert_difference('Messagetold.count', -1) do
      delete :destroy, id: @messagetold
    end

    assert_redirected_to messagetolds_path
  end
end
