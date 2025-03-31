require "test_helper"

class PhlexExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phlex_example_index_url
    assert_response :success
  end
end
