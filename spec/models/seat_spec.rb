require 'spec_helper'

describe Seat do
  it "should have a proprer associations" do
     belong_to(:theater)
     belong_to(:booking)
   end
end
