class Payment < ActiveRecord::Base
  attr_accessible :amount, :customer_id, :date
end
