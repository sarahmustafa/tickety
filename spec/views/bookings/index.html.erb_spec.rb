require 'spec_helper'

describe "bookings/index" do
  before(:each) do
    assign(:bookings, [
      stub_model(Booking,
        :customer_id => 1,
        :movie_id => 2,
        :cinema_id => 3,
        :payment_id => 4
      ),
      stub_model(Booking,
        :customer_id => 1,
        :movie_id => 2,
        :cinema_id => 3,
        :payment_id => 4
      )
    ])
  end

  it "renders a list of bookings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
