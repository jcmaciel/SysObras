require 'test_helper'

class FornecedoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedor" do
    assert_difference('Fornecedor.count') do
      post :create, :fornecedor => { }
    end

    assert_redirected_to fornecedor_path(assigns(:fornecedor))
  end

  test "should show fornecedor" do
    get :show, :id => fornecedores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fornecedores(:one).to_param
    assert_response :success
  end

  test "should update fornecedor" do
    put :update, :id => fornecedores(:one).to_param, :fornecedor => { }
    assert_redirected_to fornecedor_path(assigns(:fornecedor))
  end

  test "should destroy fornecedor" do
    assert_difference('Fornecedor.count', -1) do
      delete :destroy, :id => fornecedores(:one).to_param
    end

    assert_redirected_to fornecedores_path
  end
end
