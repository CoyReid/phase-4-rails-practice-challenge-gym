require "test_helper"

class GymsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gyms_create_url
    assert_response :success
  end
end
