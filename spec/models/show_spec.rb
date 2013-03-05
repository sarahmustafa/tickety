require 'spec_helper'

describe Show do
  it "should have a proprer associations" do
     have_many(:bookings)
     belong_to(:movie)
     belong_to(:theater)
     belong_to(:cinema)
   end
end
