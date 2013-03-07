require 'spec_helper'

describe Show do
  it "should have a proprer associations" do
     have_many(:bookings)
     belong_to(:movie)
     belong_to(:theater)
     belong_to(:cinema)
   end
   
   describe "testing validations" do
       it {should validate_presence_of(:show_date)}
       it {should validate_presence_of(:show_time)}
       it {should validate_presence_of(:theater_id)}
     end
end
