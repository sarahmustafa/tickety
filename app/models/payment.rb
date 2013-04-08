class Payment < ActiveRecord::Base
  attr_accessor :billing_address, :creditcard_num, :creditcard_type, :CVV
  attr_accessible :amount, :customer_id, :date, :billing_address, :creditcard_num, :creditcard_type, :CVV

  has_many :bookings
  belongs_to :user
end
