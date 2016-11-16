require 'test_helper'

class CreditRisksControllerTest < ActionController::TestCase
  setup do
    @credit_risk = credit_risks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_risks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_risk" do
    assert_difference('CreditRisk.count') do
      post :create, credit_risk: { cooperative_id: @credit_risk.cooperative_id, entradas_adicionales: @credit_risk.entradas_adicionales, gastos: @credit_risk.gastos, personas_acargo: @credit_risk.personas_acargo, salario_basico: @credit_risk.salario_basico }
    end

    assert_redirected_to credit_risk_path(assigns(:credit_risk))
  end

  test "should show credit_risk" do
    get :show, id: @credit_risk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit_risk
    assert_response :success
  end

  test "should update credit_risk" do
    patch :update, id: @credit_risk, credit_risk: { cooperative_id: @credit_risk.cooperative_id, entradas_adicionales: @credit_risk.entradas_adicionales, gastos: @credit_risk.gastos, personas_acargo: @credit_risk.personas_acargo, salario_basico: @credit_risk.salario_basico }
    assert_redirected_to credit_risk_path(assigns(:credit_risk))
  end

  test "should destroy credit_risk" do
    assert_difference('CreditRisk.count', -1) do
      delete :destroy, id: @credit_risk
    end

    assert_redirected_to credit_risks_path
  end
end
