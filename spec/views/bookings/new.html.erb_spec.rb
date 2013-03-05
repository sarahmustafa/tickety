require 'spec_helper'

describe "bookings/new" do
  before(:each) do
    assign(:booking, stub_model(Booking,
      :customer_id => 1,
      :movie_id => 1,
      :cinema_id => 1,
      :payment_id => 1
    ).as_new_record)
  end

  it "renders new booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path, :method => "post" do
      assert_select "input#booking_customer_id", :name => "booking[customer_id]"
      assert_select "input#booking_movie_id", :name => "booking[movie_id]"
      assert_select "input#booking_cinema_id", :name => "booking[cinema_id]"
      assert_select "input#booking_payment_id", :name => "booking[payment_id]"
    end
  end
end
