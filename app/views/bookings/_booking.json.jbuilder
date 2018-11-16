json.extract! booking, :id, :queue_id, :user_id, :number_of_seats, :status, :created_at, :updated_at
json.url booking_url(booking, format: :json)
