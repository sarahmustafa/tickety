require 'spec_helper'

describe Cinema do
  it "should have a proprer associations" do
     have_many(:shows)
     have_many(:theaters)
   end
end
