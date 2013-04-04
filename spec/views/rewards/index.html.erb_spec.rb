require 'spec_helper'

describe "rewards/index" do
  before(:each) do
    assign(:rewards, [
      stub_model(Reward,
        :reward_title => "Reward Title",
        :reward_points => 1
      ),
      stub_model(Reward,
        :reward_title => "Reward Title",
        :reward_points => 1
      )
    ])
  end

  it "renders a list of rewards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reward Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
