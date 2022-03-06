require "test_helper"

class PlantecoepidemicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plantecoepidemics_index_url
    assert_response :success
  end
end
