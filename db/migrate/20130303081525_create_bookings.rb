class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.integer :customer_id
      t.time :show_time
      t.integer :movie_id
      t.integer :cinema_id
      t.integer :payment_id

      t.timestamps
    end
  end
end
