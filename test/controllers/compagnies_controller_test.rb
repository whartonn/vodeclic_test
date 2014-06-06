require 'test_helper'

class CompagniesControllerTest < ActionController::TestCase
  setup do
    @compagny = compagnies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compagnies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compagny" do
    assert_difference('Compagny.count') do
      post :create, compagny: { title: @compagny.title }
    end

    assert_redirected_to compagny_path(assigns(:compagny))
  end

  test "should show compagny" do
    get :show, id: @compagny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compagny
    assert_response :success
  end

  test "should update compagny" do
    patch :update, id: @compagny, compagny: { title: @compagny.title }
    assert_redirected_to compagny_path(assigns(:compagny))
  end

  test "should destroy compagny" do
    assert_difference('Compagny.count', -1) do
      delete :destroy, id: @compagny
    end

    assert_redirected_to compagnies_path
  end
end
