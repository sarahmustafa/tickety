require 'spec_helper'

describe "shows/show" do
  before(:each) do
    @show = assign(:show, stub_model(Show,
      :show_type => "Show Type",
      :theater_id => 1,
      :cinema_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Show Type/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
