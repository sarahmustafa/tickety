class Seat < ActiveRecord::Base
  attr_accessible :booking_id, :is_taken, :number, :theater_id, :type
end
