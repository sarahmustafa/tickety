require 'spec_helper'

describe "shows/edit" do
  before(:each) do
    @show = assign(:show, stub_model(Show,
      :show_type => "MyString",
      :theater_id => 1,
      :cinema_id => 1
    ))
  end

  it "renders the edit show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shows_path(@show), :method => "post" do
      assert_select "input#show_show_type", :name => "show[show_type]"
      assert_select "input#show_theater_id", :name => "show[theater_id]"
      assert_select "input#show_cinema_id", :name => "show[cinema_id]"
    end
  end
end
