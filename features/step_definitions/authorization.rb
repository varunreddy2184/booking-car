Given("I am a {string}") do |string|
    case string  
    when 'customer'
     @user = FactoryBot.create :customer
    when 'driver'
     @user = FactoryBot.create :driver
    end
end
  
  Given("I want to make a booking") do
  @booking = FactoryBot.build :booking
  @booking.user = @user  
  end
  
  Given("I am logged in") do
    visit '/users/sign_in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end
  
  When("I visit {string}") do |string|
    visit string
  end
  
  Then("I should see {string} link") do |string|
    expect(page).to have_link string
  end
  
  When("I click on {string} link") do |string|
    find_link(string).click
  end
  
  Then("I should see {string} form") do |string|
    expect(page).to have_content string
  end
  
  When("I fill in the booking form") do
    fill_in "Queue", with: @booking.queue_id
    fill_in "Number of seats", with:@booking.number_of_seats
    click_button 'Create Booking'
  end
  
  When("I fill in the car form") do
    fill_in "Queue", with: @car.queue_id
    fill_in "Available seats", with:@car.available_seats
    fill_in "Car number", with:@car.car_number
    click_button 'Create Car'
  end

  Then("I should see my Booking") do
    expect(page).to have_content 'Booking was successfully created.'
    expect(page).to have_content @booking.queue_id
    expect(page).to have_content @booking.number_of_seats
    expect(page).to have_content @booking.user.email
  end
  
  Given("I want to create a car") do
    @car = FactoryBot.build :car
    @car.user = @user 
  end
  
  
  Then("I should see my car") do
    expect(page).to have_content 'Car was successfully created.'
    expect(page).to have_content @car.queue_id
    expect(page).to have_content @car.available_seats
    expect(page).to have_content @car.car_number
    expect(page).to have_content @car.user.email
  end
  
  