class Seat < ActiveRecord::Base
  attr_accessible :booking_id, :is_taken, :number, :theater_id, :type
belongs_to :theater
belongs_to :booking
end
