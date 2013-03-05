require 'spec_helper'

describe "seats/new" do
  before(:each) do
    assign(:seat, stub_model(Seat,
      :number => 1,
      :type => "",
      :theater_id => 1,
      :is_taken => false,
      :booking_id => 1
    ).as_new_record)
  end

  it "renders new seat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => seats_path, :method => "post" do
      assert_select "input#seat_number", :name => "seat[number]"
      assert_select "input#seat_type", :name => "seat[type]"
      assert_select "input#seat_theater_id", :name => "seat[theater_id]"
      assert_select "input#seat_is_taken", :name => "seat[is_taken]"
      assert_select "input#seat_booking_id", :name => "seat[booking_id]"
    end
  end
end
