require 'spec_helper'

describe Cinema do
  it "should have a proprer associations" do
     have_many(:shows)
     have_many(:theaters)
   end
   
   it "should validate presence of" do
      should validate_presence_of :name
    end
    
     describe "Use factories for setup" do
       before(:each) do
       @m1 = FactoryGirl.create(:cinema)
       @m2 = FactoryGirl.create(:cinema, :name => "Villagio")
        end

       it "creates valid objects" do
       @m1.should be_valid
       @m2.should be_valid
       end
     end
end
