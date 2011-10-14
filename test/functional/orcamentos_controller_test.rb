require 'test_helper'

class OrcamentosControllerTest < ActionController::TestCase
  setup do
    @orcamento = orcamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orcamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orcamento" do
    assert_difference('Orcamento.count') do
      post :create, :orcamento => @orcamento.attributes
    end

    assert_redirected_to orcamento_path(assigns(:orcamento))
  end

  test "should show orcamento" do
    get :show, :id => @orcamento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @orcamento.to_param
    assert_response :success
  end

  test "should update orcamento" do
    put :update, :id => @orcamento.to_param, :orcamento => @orcamento.attributes
    assert_redirected_to orcamento_path(assigns(:orcamento))
  end

  test "should destroy orcamento" do
    assert_difference('Orcamento.count', -1) do
      delete :destroy, :id => @orcamento.to_param
    end

    assert_redirected_to orcamentos_path
  end
end
