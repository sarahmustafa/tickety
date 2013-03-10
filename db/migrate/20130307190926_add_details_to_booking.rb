class AddDetailsToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :show_id, :integer
    add_column :bookings, :num_seat, :integer
  end
end
