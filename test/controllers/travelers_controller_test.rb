require 'test_helper'

class TravelersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get travelers_index_url
    assert_response :success
  end

  test "should get show" do
    get travelers_show_url
    assert_response :success
  end

end
