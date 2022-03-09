require "test_helper"

class ShowdatasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showdatas_index_url
    assert_response :success
  end
end
