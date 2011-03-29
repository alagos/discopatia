require 'test_helper'

class MediosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medio" do
    assert_difference('Medio.count') do
      post :create, :medio => { }
    end

    assert_redirected_to medio_path(assigns(:medio))
  end

  test "should show medio" do
    get :show, :id => medios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => medios(:one).to_param
    assert_response :success
  end

  test "should update medio" do
    put :update, :id => medios(:one).to_param, :medio => { }
    assert_redirected_to medio_path(assigns(:medio))
  end

  test "should destroy medio" do
    assert_difference('Medio.count', -1) do
      delete :destroy, :id => medios(:one).to_param
    end

    assert_redirected_to medios_path
  end
end
