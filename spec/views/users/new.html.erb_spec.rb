require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :email => "MyString",
      :crypted_password => "MyString",
      :salt => "MyString",
      :name => "MyString",
      :is_customer => false,
      :is_admin => false,
      :is_manager => false,
      :reward_points => 1,
      :billing_address => "MyString",
      :creditcard_num => 1,
      :creditcard_type => "MyString",
      :security_num => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_username", :name => "user[username]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_crypted_password", :name => "user[crypted_password]"
      assert_select "input#user_salt", :name => "user[salt]"
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_is_customer", :name => "user[is_customer]"
      assert_select "input#user_is_admin", :name => "user[is_admin]"
      assert_select "input#user_is_manager", :name => "user[is_manager]"
      assert_select "input#user_reward_points", :name => "user[reward_points]"
      assert_select "input#user_billing_address", :name => "user[billing_address]"
      assert_select "input#user_creditcard_num", :name => "user[creditcard_num]"
      assert_select "input#user_creditcard_type", :name => "user[creditcard_type]"
      assert_select "input#user_security_num", :name => "user[security_num]"
    end
  end
end
