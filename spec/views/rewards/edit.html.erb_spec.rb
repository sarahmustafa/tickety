require 'spec_helper'

describe "rewards/edit" do
  before(:each) do
    @reward = assign(:reward, stub_model(Reward,
      :reward_title => "MyString",
      :reward_points => 1
    ))
  end

  it "renders the edit reward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reward_path(@reward), "post" do
      assert_select "input#reward_reward_title[name=?]", "reward[reward_title]"
      assert_select "input#reward_reward_points[name=?]", "reward[reward_points]"
    end
  end
end
