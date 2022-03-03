require "application_system_test_case"

class ComplainSectionsTest < ApplicationSystemTestCase
  setup do
    @complain_section = complain_sections(:one)
  end

  test "visiting the index" do
    visit complain_sections_url
    assert_selector "h1", text: "Complain Sections"
  end

  test "creating a Complain section" do
    visit complain_sections_url
    click_on "New Complain Section"

    fill_in "Section", with: @complain_section.section
    click_on "Create Complain section"

    assert_text "Complain section was successfully created"
    click_on "Back"
  end

  test "updating a Complain section" do
    visit complain_sections_url
    click_on "Edit", match: :first

    fill_in "Section", with: @complain_section.section
    click_on "Update Complain section"

    assert_text "Complain section was successfully updated"
    click_on "Back"
  end

  test "destroying a Complain section" do
    visit complain_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complain section was successfully destroyed"
  end
end
