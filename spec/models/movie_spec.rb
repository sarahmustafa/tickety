require 'spec_helper'

describe Movie do
  it "should have a proprer associations" do
     have_many(:shows)
   end
   
   it "should validate numericality of" do
      should validate_numericality_of(:duration).only_integer
    end
   
    it "should allow valid numbers for duration" do
      should allow_value(1).for(:duration)
      should allow_value(100).for(:duration)
      should allow_value(500).for(:duration)
    end

    it "should not allow invalid numbers for duraion" do
      should_not allow_value(0).for(:duration)
      should_not allow_value(-1).for(:duration)
      should_not allow_value(-3.145259).for(:duration) 
    end
    
   describe "Use factories for setup" do
     before(:each) do
     @m1 = FactoryGirl.create(:movie)
     @m2 = FactoryGirl.create(:movie, :title => "The Notebook")
     @m3 = FactoryGirl.create(:movie, :duration => nil)
     end

     it "creates valid objects" do
     @m1.should be_valid
     @m2.should be_valid
     @m3.should be_valid
     end
  
  end
  
end

