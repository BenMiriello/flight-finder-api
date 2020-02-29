require 'test_helper'

class Api::V1responsesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1responses_show_url
    assert_response :success
  end

end
