class Theater < ActiveRecord::Base
<<<<<<< HEAD
   attr_accessible :cinema_id, :theater_number
=======
  attr_accessible :cinema_id, :theater_number
has_many :shows
has_many :seats
belongs_to :cinema
>>>>>>> upstream/master
end
