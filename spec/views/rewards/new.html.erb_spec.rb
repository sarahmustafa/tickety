require 'spec_helper'

describe "rewards/new" do
  before(:each) do
    assign(:reward, stub_model(Reward,
      :reward_title => "MyString",
      :reward_points => 1
    ).as_new_record)
  end

  it "renders new reward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rewards_path, "post" do
      assert_select "input#reward_reward_title[name=?]", "reward[reward_title]"
      assert_select "input#reward_reward_points[name=?]", "reward[reward_points]"
    end
  end
end
