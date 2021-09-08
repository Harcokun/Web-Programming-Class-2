require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get user_read_url
    assert_response :success
  end
end
