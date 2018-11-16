class Booking < ApplicationRecord
  belongs_to :user
  enum status: [:active, :fullfilled]
end
