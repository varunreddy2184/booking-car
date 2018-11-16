FactoryBot.define do
    factory :customer, class: User do
        email "1@ait.asia"
        password "password"
        password_confirmation "password"
        role "customer"
    end
    factory :driver, class: User do
        email "driver@ait.asia"
        password "password"
        password_confirmation "password"
        role "driver"
    end
    factory :booking, class: Booking do
        queue_id {1}
        number_of_seats {2}
        status {'active'}
    end
    factory :car, class: Car do
        queue_id {1}
        available_seats {2}
        car_number {'tn1234'}
        status {'active'}
    end
end