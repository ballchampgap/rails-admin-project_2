require "test_helper"

class PlantecopestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plantecopests_index_url
    assert_response :success
  end
end
