class Booking < ActiveRecord::Base
  attr_accessible :booking_date, :cinema_id, :customer_id, :movie_id, :payment_id, :show_time
end
