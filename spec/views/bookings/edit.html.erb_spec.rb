require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :customer_id => 1,
      :movie_id => 1,
      :cinema_id => 1,
      :payment_id => 1
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path(@booking), :method => "post" do
      assert_select "input#booking_customer_id", :name => "booking[customer_id]"
      assert_select "input#booking_movie_id", :name => "booking[movie_id]"
      assert_select "input#booking_cinema_id", :name => "booking[cinema_id]"
      assert_select "input#booking_payment_id", :name => "booking[payment_id]"
    end
  end
end
