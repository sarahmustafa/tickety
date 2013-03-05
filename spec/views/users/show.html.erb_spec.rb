require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :username => "Username",
      :email => "Email",
      :crypted_password => "Crypted Password",
      :salt => "Salt",
      :name => "Name",
      :is_customer => false,
      :is_admin => false,
      :is_manager => false,
      :reward_points => 1,
      :billing_address => "Billing Address",
      :creditcard_num => 2,
      :creditcard_type => "Creditcard Type",
      :security_num => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Email/)
    rendered.should match(/Crypted Password/)
    rendered.should match(/Salt/)
    rendered.should match(/Name/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/Billing Address/)
    rendered.should match(/2/)
    rendered.should match(/Creditcard Type/)
    rendered.should match(/3/)
  end
end
