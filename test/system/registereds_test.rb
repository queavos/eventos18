require "application_system_test_case"

class RegisteredsTest < ApplicationSystemTestCase
  setup do
    @registered = registereds(:one)
  end

  test "visiting the index" do
    visit registereds_url
    assert_selector "h1", text: "Registereds"
  end

  test "creating a Registered" do
    visit registereds_url
    click_on "New Registered"

    fill_in "Checked", with: @registered.checked
    fill_in "Event", with: @registered.event_id
    fill_in "Regdate", with: @registered.regDate
    fill_in "Status", with: @registered.status
    fill_in "User", with: @registered.user_id
    click_on "Create Registered"

    assert_text "Registered was successfully created"
    click_on "Back"
  end

  test "updating a Registered" do
    visit registereds_url
    click_on "Edit", match: :first

    fill_in "Checked", with: @registered.checked
    fill_in "Event", with: @registered.event_id
    fill_in "Regdate", with: @registered.regDate
    fill_in "Status", with: @registered.status
    fill_in "User", with: @registered.user_id
    click_on "Update Registered"

    assert_text "Registered was successfully updated"
    click_on "Back"
  end

  test "destroying a Registered" do
    visit registereds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registered was successfully destroyed"
  end
end
