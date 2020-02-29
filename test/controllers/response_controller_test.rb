require 'test_helper'

class ResponseControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get response_show_url
    assert_response :success
  end

end
