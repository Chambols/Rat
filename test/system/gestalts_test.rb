require "application_system_test_case"

class GestaltsTest < ApplicationSystemTestCase
  setup do
    @gestalt = gestalts(:one)
  end

  test "visiting the index" do
    visit gestalts_url
    assert_selector "h1", text: "Gestalts"
  end

  test "creating a Gestalt" do
    visit gestalts_url
    click_on "New Gestalt"

    fill_in "Name of perpetrator", with: @gestalt.name_of_perpetrator
    fill_in "Suggested punishment", with: @gestalt.suggested_punishment
    fill_in "Time of offence", with: @gestalt.time_of_offence
    fill_in "Type of offence", with: @gestalt.type_of_offence
    click_on "Create Gestalt"

    assert_text "Gestalt was successfully created"
    click_on "Back"
  end

  test "updating a Gestalt" do
    visit gestalts_url
    click_on "Edit", match: :first

    fill_in "Name of perpetrator", with: @gestalt.name_of_perpetrator
    fill_in "Suggested punishment", with: @gestalt.suggested_punishment
    fill_in "Time of offence", with: @gestalt.time_of_offence
    fill_in "Type of offence", with: @gestalt.type_of_offence
    click_on "Update Gestalt"

    assert_text "Gestalt was successfully updated"
    click_on "Back"
  end

  test "destroying a Gestalt" do
    visit gestalts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gestalt was successfully destroyed"
  end
end
