require "test_helper"

class RegExrTestersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reg_exr_testers_index_url
    assert_response :success
  end
end
