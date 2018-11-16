require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    fill_in "Ar Number", with: @car.ar_number
    fill_in "Available Seats", with: @car.available_seats
    fill_in "Queue", with: @car.queue_id
    fill_in "Status", with: @car.status
    fill_in "User", with: @car.user
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    fill_in "Ar Number", with: @car.ar_number
    fill_in "Available Seats", with: @car.available_seats
    fill_in "Queue", with: @car.queue_id
    fill_in "Status", with: @car.status
    fill_in "User", with: @car.user
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
