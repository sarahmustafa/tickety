require 'spec_helper'

describe "rewards/show" do
  before(:each) do
    @reward = assign(:reward, stub_model(Reward,
      :reward_title => "Reward Title",
      :reward_points => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reward Title/)
    rendered.should match(/1/)
  end
end
