require 'spec_helper'

describe Payment do
  it "should have a proprer associations" do
     have_many(:bookings)
     belong_to(:user)
   end
end
