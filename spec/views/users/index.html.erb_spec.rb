require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
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
      ),
      stub_model(User,
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
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Billing Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Creditcard Type".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
