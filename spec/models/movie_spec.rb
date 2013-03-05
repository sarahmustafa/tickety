require 'spec_helper'

describe Movie do
  it "should have a proprer associations" do
     have_many(:shows)
   end
end
