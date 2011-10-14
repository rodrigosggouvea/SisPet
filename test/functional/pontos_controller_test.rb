require 'test_helper'

class PontosControllerTest < ActionController::TestCase
  setup do
    @ponto = pontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ponto" do
    assert_difference('Ponto.count') do
      post :create, :ponto => @ponto.attributes
    end

    assert_redirected_to ponto_path(assigns(:ponto))
  end

  test "should show ponto" do
    get :show, :id => @ponto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ponto.to_param
    assert_response :success
  end

  test "should update ponto" do
    put :update, :id => @ponto.to_param, :ponto => @ponto.attributes
    assert_redirected_to ponto_path(assigns(:ponto))
  end

  test "should destroy ponto" do
    assert_difference('Ponto.count', -1) do
      delete :destroy, :id => @ponto.to_param
    end

    assert_redirected_to pontos_path
  end
end
