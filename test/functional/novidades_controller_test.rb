require 'test_helper'

class NovidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novidade" do
    assert_difference('Novidade.count') do
      post :create, :novidade => { }
    end

    assert_redirected_to novidade_path(assigns(:novidade))
  end

  test "should show novidade" do
    get :show, :id => novidades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => novidades(:one).to_param
    assert_response :success
  end

  test "should update novidade" do
    put :update, :id => novidades(:one).to_param, :novidade => { }
    assert_redirected_to novidade_path(assigns(:novidade))
  end

  test "should destroy novidade" do
    assert_difference('Novidade.count', -1) do
      delete :destroy, :id => novidades(:one).to_param
    end

    assert_redirected_to novidades_path
  end
end
