require "test_helper"

class ComplainSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complain_section = complain_sections(:one)
  end

  test "should get index" do
    get complain_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_complain_section_url
    assert_response :success
  end

  test "should create complain_section" do
    assert_difference('ComplainSection.count') do
      post complain_sections_url, params: { complain_section: { section: @complain_section.section } }
    end

    assert_redirected_to complain_section_url(ComplainSection.last)
  end

  test "should show complain_section" do
    get complain_section_url(@complain_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_complain_section_url(@complain_section)
    assert_response :success
  end

  test "should update complain_section" do
    patch complain_section_url(@complain_section), params: { complain_section: { section: @complain_section.section } }
    assert_redirected_to complain_section_url(@complain_section)
  end

  test "should destroy complain_section" do
    assert_difference('ComplainSection.count', -1) do
      delete complain_section_url(@complain_section)
    end

    assert_redirected_to complain_sections_url
  end
end
