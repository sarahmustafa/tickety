require 'spec_helper'

describe Theater do
  it "should have a proprer associations" do
     have_many(:shows)
     belong_to(:cinema)
   end
end
