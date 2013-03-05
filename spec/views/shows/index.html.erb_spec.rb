require 'spec_helper'

describe "shows/index" do
  before(:each) do
    assign(:shows, [
      stub_model(Show,
        :show_type => "Show Type",
        :theater_id => 1,
        :cinema_id => 2
      ),
      stub_model(Show,
        :show_type => "Show Type",
        :theater_id => 1,
        :cinema_id => 2
      )
    ])
  end

  it "renders a list of shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Show Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
