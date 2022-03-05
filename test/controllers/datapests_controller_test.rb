require "test_helper"

class DatapestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get datapests_index_url
    assert_response :success
  end
end
