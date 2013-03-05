require 'spec_helper'

describe "theaters/show" do
  before(:each) do
    @theater = assign(:theater, stub_model(Theater,
      :cinema_id => 1,
      :theater_number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
