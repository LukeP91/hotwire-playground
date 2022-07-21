require "application_system_test_case"

class ManualInvestmentsTest < ApplicationSystemTestCase
  setup do
    @manual_investment = manual_investments(:one)
  end

  test "visiting the index" do
    visit manual_investments_url
    assert_selector "h1", text: "Manual investments"
  end

  test "should create manual investment" do
    visit manual_investments_url
    click_on "New manual investment"

    fill_in "Bought at", with: @manual_investment.bought_at
    fill_in "Investment name", with: @manual_investment.investment_name
    fill_in "Value", with: @manual_investment.value
    click_on "Create Manual investment"

    assert_text "Manual investment was successfully created"
    click_on "Back"
  end

  test "should update Manual investment" do
    visit manual_investment_url(@manual_investment)
    click_on "Edit this manual investment", match: :first

    fill_in "Bought at", with: @manual_investment.bought_at
    fill_in "Investment name", with: @manual_investment.investment_name
    fill_in "Value", with: @manual_investment.value
    click_on "Update Manual investment"

    assert_text "Manual investment was successfully updated"
    click_on "Back"
  end

  test "should destroy Manual investment" do
    visit manual_investment_url(@manual_investment)
    click_on "Destroy this manual investment", match: :first

    assert_text "Manual investment was successfully destroyed"
  end
end
