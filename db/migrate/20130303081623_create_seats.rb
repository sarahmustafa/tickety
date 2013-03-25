class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :number
      t.string :type
      t.integer :theater_id
      t.boolean :is_taken, :default => false
      t.integer :booking_id

      t.timestamps
    end
  end
end
