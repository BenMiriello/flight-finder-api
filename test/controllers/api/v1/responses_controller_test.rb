require 'test_helper'

class Api::V1::ResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_responses_show_url
    assert_response :success
  end

end
