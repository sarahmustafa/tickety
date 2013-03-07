require 'spec_helper'

describe Theater do
  it "should have a proprer associations" do
     have_many(:shows)
     belong_to(:cinema)
   end
   
   describe "testing validations" do
      it {should validate_presence_of(:theater_number)}
      it {should validate_presence_of(:seat_num)}
    end
    
     describe "valid theater numbers" do   
      it {should allow_value(2).for(:theater_number)}
      it {should allow_value(50).for(:theater_number)}
     end
     
     describe "invalid theater number" do   
      it {should_not allow_value(0).for(:theater_number)}
      it {should_not allow_value(-1).for(:theater_number)}
     end
     
     describe "valid seat numbers" do   
      it {should allow_value(2).for(:seat_num)}
      it {should allow_value(50).for(:seat_num)}
     end
     
     describe "invalid seat number" do   
      it {should_not allow_value(0).for(:seat_num)}
      it {should_not allow_value(-1).for(:seat_num)}
     end
    
    
    describe "Use factories for setup" do
       before(:each) do
       @c1 = FactoryGirl.create(:cinema)
       @t1 = FactoryGirl.create(:theater, :cinema => @c1)
       @t2 = FactoryGirl.create(:theater, :theater_number => 3)
       @t3 = FactoryGirl.create(:theater, :seat_num => 54)
       end

       it "create valid objects" do
       @t1.should be_valid
       @t2.should be_valid
       @t3.should be_valid
       end
       
         it "should allow us to return theaters for a given cinema" do 
           Theater.for_cinema(@c1.id).size.should == 1 
#           Theater.for_cinema(@c3.id).size.should == 1
         end 
     end
end
