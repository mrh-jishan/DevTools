require "test_helper"

class StringGeneratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get string_generators_index_url
    assert_response :success
  end
end
