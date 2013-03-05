class Theater < ActiveRecord::Base
attr_accessible :cinema_id, :theater_number
attr_accessible :cinema_id, :theater_number
has_many :shows
has_many :seats
belongs_to :cinema
end
