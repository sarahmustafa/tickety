require 'spec_helper'

describe "payments/new" do
  before(:each) do
    assign(:payment, stub_model(Payment,
      :amount => 1,
      :customer_id => 1
    ).as_new_record)
  end

  it "renders new payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path, :method => "post" do
      assert_select "input#payment_amount", :name => "payment[amount]"
      assert_select "input#payment_customer_id", :name => "payment[customer_id]"
    end
  end
end
