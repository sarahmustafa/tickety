class Show < ActiveRecord::Base
  attr_accessible :cinema_id, :show_date, :show_time, :show_type, :theater_id
end
