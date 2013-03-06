require 'spec_helper'

describe User do
  it "should have a proprer associations" do
     have_many(:bookings)
     have_many(:payments)
   end
   
   describe "testing validations" do
      it {should validate_presence_of(:name)}
    end

    describe "valid emails" do
    it {should allow_value("fred@fred.com").for(:email)}
    it {should allow_value("fred@qatar.cmu.edu").for(:email)}
    it {should allow_value("my_fred@fred.org").for(:email)}
    it {should allow_value("fred123@fred.net").for(:email)}
    it {should allow_value("my.fred@fred.gov").for(:email)}
    end

    describe "invalid emails" do
    it {should_not allow_value("fred").for(:email)}
    it {should_not allow_value("fred@fred,com").for(:email)}
    it {should_not allow_value("my fred@fred.com").for(:email)}
    end
    
    describe "valid passwords" do
    it {should allow_value("1234").for(:password)}
    it {should allow_value("abgt@9").for(:password)}
    it {should allow_value("mmm").for(:password)}
    end
  
    describe "invalid passwords" do   
    it {should_not allow_value("to").for(:password)}
    it {should_not allow_value("t").for(:password)}
   end
   
   describe "Use factories for setup" do
     before(:each) do
     @sarah = FactoryGirl.create(:user)
     @shamma = FactoryGirl.create(:user, :name => "Shamma")
     @jaasim = FactoryGirl.create(:user, :username => "MJP")
     end
     
     it "create valid objects" do
     @sarah.should be_valid
     @shamma.should be_valid
     end
     
     it "has the right attribute informtion" do
     @shamma.username == "sarahmustafa"
     @jaasim.username == "MJP"
     end
   end
end