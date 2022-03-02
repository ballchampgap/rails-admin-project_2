require "test_helper"

class ComplainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get complain_index_url
    assert_response :success
  end
end
