class Payment < ActiveRecord::Base
  attr_accessible :amount, :customer_id, :date
  
  has_many :bookings
  belongs_to :user
end
