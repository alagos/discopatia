require 'test_helper'

class DiscosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disco" do
    assert_difference('Disco.count') do
      post :create, :disco => { }
    end

    assert_redirected_to disco_path(assigns(:disco))
  end

  test "should show disco" do
    get :show, :id => discos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => discos(:one).to_param
    assert_response :success
  end

  test "should update disco" do
    put :update, :id => discos(:one).to_param, :disco => { }
    assert_redirected_to disco_path(assigns(:disco))
  end

  test "should destroy disco" do
    assert_difference('Disco.count', -1) do
      delete :destroy, :id => discos(:one).to_param
    end

    assert_redirected_to discos_path
  end
end
