class Show < ActiveRecord::Base
  attr_accessible :cinema_id, :show_date, :show_time, :show_type, :theater_id
has_many :bookings
belongs_to :movie
belongs_to :theater
belongs_to :cinema
end
