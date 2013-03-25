class AddPriceToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :price, :integer
  end
end
