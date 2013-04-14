class Theater < ActiveRecord::Base
attr_accessible :cinema_id, :theater_number
attr_accessible :cinema_id, :theater_number
has_many :shows, :dependent => :destroy
has_many :seats, :dependent => :destroy
belongs_to :cinema

attr_accessor           :seat_num
attr_accessible         :seat_num


validates :theater_number, :numericality => {:greater_than => 0, :only_integer => true, :allow_blank => false, :allow_nil => false}

validate do |theater|
  if theater.seat_num == "0"
    theater.errors[:base] << "Please enter the number of seats in the selected theater."
  end
end
scope :for_cinema, lambda{|cinema_id| where('cinema_id = ?', cinema_id)}
end
