require "application_system_test_case"

class Frend1sTest < ApplicationSystemTestCase
  setup do
    @frend1 = frend1s(:one)
  end

  test "visiting the index" do
    visit frend1s_url
    assert_selector "h1", text: "Frend1s"
  end

  test "should create frend1" do
    visit frend1s_url
    click_on "New frend1"

    fill_in "Email", with: @frend1.email
    fill_in "First name", with: @frend1.first_name
    fill_in "Last name", with: @frend1.last_name
    fill_in "Phone", with: @frend1.phone
    fill_in "Twitter", with: @frend1.twitter
    click_on "Create Frend1"

    assert_text "Frend1 was successfully created"
    click_on "Back"
  end

  test "should update Frend1" do
    visit frend1_url(@frend1)
    click_on "Edit this frend1", match: :first

    fill_in "Email", with: @frend1.email
    fill_in "First name", with: @frend1.first_name
    fill_in "Last name", with: @frend1.last_name
    fill_in "Phone", with: @frend1.phone
    fill_in "Twitter", with: @frend1.twitter
    click_on "Update Frend1"

    assert_text "Frend1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Frend1" do
    visit frend1_url(@frend1)
    click_on "Destroy this frend1", match: :first

    assert_text "Frend1 was successfully destroyed"
  end
end
