Feature: to check authorization
    Scenario: customer creats new booking
        Given I am a "customer"
        And I want to make a booking
        And I am logged in
        When I visit "/bookings"
        Then I should see "New Booking" link
        When I click on "New Booking" link
        Then I should see "New Booking" form
        When I fill in the booking form
        Then I should see my Booking

    Scenario: a driver creats new car
        Given I am a "driver"
        And I want to create a car
        And I am logged in 
        When I visit "/cars"
        Then I should see "New Car" link
        When I click on "New Car" link
        Then I should see "New Car" form
        When I fill in the car form
        Then I should see my car