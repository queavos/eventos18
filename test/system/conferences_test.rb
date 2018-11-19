require "application_system_test_case"

class ConferencesTest < ApplicationSystemTestCase
  setup do
    @conference = conferences(:one)
  end

  test "visiting the index" do
    visit conferences_url
    assert_selector "h1", text: "Conferences"
  end

  test "creating a Conference" do
    visit conferences_url
    click_on "New Conference"

    fill_in "Date", with: @conference.date
    fill_in "Event", with: @conference.event_id
    fill_in "Intro", with: @conference.intro
    fill_in "Place", with: @conference.place
    fill_in "Speaker", with: @conference.speaker_id
    fill_in "Time", with: @conference.time
    fill_in "Title", with: @conference.title
    click_on "Create Conference"

    assert_text "Conference was successfully created"
    click_on "Back"
  end

  test "updating a Conference" do
    visit conferences_url
    click_on "Edit", match: :first

    fill_in "Date", with: @conference.date
    fill_in "Event", with: @conference.event_id
    fill_in "Intro", with: @conference.intro
    fill_in "Place", with: @conference.place
    fill_in "Speaker", with: @conference.speaker_id
    fill_in "Time", with: @conference.time
    fill_in "Title", with: @conference.title
    click_on "Update Conference"

    assert_text "Conference was successfully updated"
    click_on "Back"
  end

  test "destroying a Conference" do
    visit conferences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conference was successfully destroyed"
  end
end
