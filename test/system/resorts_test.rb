require "application_system_test_case"

class ResortsTest < ApplicationSystemTestCase
  setup do
    @resort = resorts(:one)
  end

  test "visiting the index" do
    visit resorts_url
    assert_selector "h1", text: "Resorts"
  end

  test "creating a Resort" do
    visit resorts_url
    click_on "New Resort"

    check "Epic" if @resort.epic
    check "Ikon" if @resort.ikon
    fill_in "Name", with: @resort.name
    fill_in "State", with: @resort.state
    click_on "Create Resort"

    assert_text "Resort was successfully created"
    click_on "Back"
  end

  test "updating a Resort" do
    visit resorts_url
    click_on "Edit", match: :first

    check "Epic" if @resort.epic
    check "Ikon" if @resort.ikon
    fill_in "Name", with: @resort.name
    fill_in "State", with: @resort.state
    click_on "Update Resort"

    assert_text "Resort was successfully updated"
    click_on "Back"
  end

  test "destroying a Resort" do
    visit resorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resort was successfully destroyed"
  end
end
