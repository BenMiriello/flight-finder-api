require 'test_helper'

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get purchases_show_url
    assert_response :success
  end

  test "should get index" do
    get purchases_index_url
    assert_response :success
  end

end
