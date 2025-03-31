require "test_helper"

class HotwireExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotwire_example_index_url
    assert_response :success
  end
end
