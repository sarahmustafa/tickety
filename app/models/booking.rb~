class Booking < ActiveRecord::Base
  attr_accessible :booking_date, :cinema_id, :customer_id, :movie_id, :payment_id, :show_time, :seat_ids, :show_id

belongs_to :user
belongs_to :payment
belongs_to :show
has_many :seats
end
