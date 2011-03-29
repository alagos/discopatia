require 'test_helper'

class ArtistasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artista" do
    assert_difference('Artista.count') do
      post :create, :artista => { }
    end

    assert_redirected_to artista_path(assigns(:artista))
  end

  test "should show artista" do
    get :show, :id => artistas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => artistas(:one).to_param
    assert_response :success
  end

  test "should update artista" do
    put :update, :id => artistas(:one).to_param, :artista => { }
    assert_redirected_to artista_path(assigns(:artista))
  end

  test "should destroy artista" do
    assert_difference('Artista.count', -1) do
      delete :destroy, :id => artistas(:one).to_param
    end

    assert_redirected_to artistas_path
  end
end
