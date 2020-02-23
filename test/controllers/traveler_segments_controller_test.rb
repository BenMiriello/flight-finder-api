require 'test_helper'

class TravelerSegmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get traveler_segments_index_url
    assert_response :success
  end

  test "should get show" do
    get traveler_segments_show_url
    assert_response :success
  end

end
