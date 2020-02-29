require 'test_helper'

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get responses_show_url
    assert_response :success
  end

end
