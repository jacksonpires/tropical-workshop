require "test_helper"

class RubyUiExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ruby_ui_example_index_url
    assert_response :success
  end
end
