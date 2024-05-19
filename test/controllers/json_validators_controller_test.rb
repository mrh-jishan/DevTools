require "test_helper"

class JsonValidatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get json_validators_index_url
    assert_response :success
  end
end
