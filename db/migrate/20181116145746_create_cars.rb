class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :queue_id
      t.references :user, foreign_key: true
      t.integer :available_seats
      t.string :car_number
      t.integer :status

      t.timestamps
    end
  end
end
