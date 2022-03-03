require "test_helper"

class ComplainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complain = complains(:one)
  end

  test "should get index" do
    get complains_url
    assert_response :success
  end

  test "should get new" do
    get new_complain_url
    assert_response :success
  end

  test "should create complain" do
    assert_difference('Complain.count') do
      post complains_url, params: { complain: { body: @complain.body, reply: @complain.reply, section: @complain.section, user_id: @complain.user_id, yname: @complain.yname } }
    end

    assert_redirected_to complain_url(Complain.last)
  end

  test "should show complain" do
    get complain_url(@complain)
    assert_response :success
  end

  test "should get edit" do
    get edit_complain_url(@complain)
    assert_response :success
  end

  test "should update complain" do
    patch complain_url(@complain), params: { complain: { body: @complain.body, reply: @complain.reply, section: @complain.section, user_id: @complain.user_id, yname: @complain.yname } }
    assert_redirected_to complain_url(@complain)
  end

  test "should destroy complain" do
    assert_difference('Complain.count', -1) do
      delete complain_url(@complain)
    end

    assert_redirected_to complains_url
  end
end
