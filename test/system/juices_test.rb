require "application_system_test_case"

class JuicesTest < ApplicationSystemTestCase
  setup do
    @juice = juices(:one)
  end

  test "visiting the index" do
    visit juices_url
    assert_selector "h1", text: "Juices"
  end

  test "creating a Juice" do
    visit juices_url
    click_on "New Juice"

    fill_in "Capacity", with: @juice.capacity
    fill_in "Name", with: @juice.name
    fill_in "Price", with: @juice.price
    click_on "Create Juice"

    assert_text "Juice was successfully created"
    click_on "Back"
  end

  test "updating a Juice" do
    visit juices_url
    click_on "Edit", match: :first

    fill_in "Capacity", with: @juice.capacity
    fill_in "Name", with: @juice.name
    fill_in "Price", with: @juice.price
    click_on "Update Juice"

    assert_text "Juice was successfully updated"
    click_on "Back"
  end

  test "destroying a Juice" do
    visit juices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Juice was successfully destroyed"
  end
end
