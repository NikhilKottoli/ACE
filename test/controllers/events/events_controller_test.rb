require "test_helper"

class Events::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get events_events_index_url
    assert_response :success
  end

  test "should get show" do
    get events_events_show_url
    assert_response :success
  end
end
