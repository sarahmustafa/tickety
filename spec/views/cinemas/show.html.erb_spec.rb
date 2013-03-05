require 'spec_helper'

describe "cinemas/show" do
  before(:each) do
    @cinema = assign(:cinema, stub_model(Cinema,
      :name => "Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
  end
end
