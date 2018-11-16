class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :queue_id
      t.references :user, foreign_key: true
      t.integer :number_of_seats
      t.integer :status

      t.timestamps
    end
  end
end
