require 'spec_helper'

describe Booking do
  it "should have a proprer associations" do
    have_many(:seats)
    belong_to(:user)
    belong_to(:show)
    belong_to(:payment)
  end
end
