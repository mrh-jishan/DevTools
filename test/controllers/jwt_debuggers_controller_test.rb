require "test_helper"

class JwtDebuggersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jwt_debuggers_index_url
    assert_response :success
  end
end
