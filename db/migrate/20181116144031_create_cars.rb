class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :queue_id
      t.reference :user
      t.integer :available_seats
      t.string :ar_number
      t.integer :status

      t.timestamps
    end
  end
end
