require 'spec_helper'

describe "seats/show" do
  before(:each) do
    @seat = assign(:seat, stub_model(Seat,
      :number => 1,
      :type => "Type",
      :theater_id => 2,
      :is_taken => false,
      :booking_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Type/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/3/)
  end
end
