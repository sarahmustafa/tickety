require 'spec_helper'

describe User do
  it "should have a proprer associations" do
     have_many(:bookings)
     have_many(:payments)
   end
end