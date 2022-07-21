require "test_helper"

class ManualInvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manual_investment = manual_investments(:one)
  end

  test "should get index" do
    get manual_investments_url
    assert_response :success
  end

  test "should get new" do
    get new_manual_investment_url
    assert_response :success
  end

  test "should create manual_investment" do
    assert_difference("ManualInvestment.count") do
      post manual_investments_url, params: { manual_investment: { bought_at: @manual_investment.bought_at, investment_name: @manual_investment.investment_name, value: @manual_investment.value } }
    end

    assert_redirected_to manual_investment_url(ManualInvestment.last)
  end

  test "should show manual_investment" do
    get manual_investment_url(@manual_investment)
    assert_response :success
  end

  test "should get edit" do
    get edit_manual_investment_url(@manual_investment)
    assert_response :success
  end

  test "should update manual_investment" do
    patch manual_investment_url(@manual_investment), params: { manual_investment: { bought_at: @manual_investment.bought_at, investment_name: @manual_investment.investment_name, value: @manual_investment.value } }
    assert_redirected_to manual_investment_url(@manual_investment)
  end

  test "should destroy manual_investment" do
    assert_difference("ManualInvestment.count", -1) do
      delete manual_investment_url(@manual_investment)
    end

    assert_redirected_to manual_investments_url
  end
end
