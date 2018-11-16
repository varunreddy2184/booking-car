class Car < ApplicationRecord
  belongs_to :user
  enum status: [:active, :fullfilled, :in_queue]
end
