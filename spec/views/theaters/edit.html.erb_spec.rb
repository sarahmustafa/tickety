require 'spec_helper'

describe "theaters/edit" do
  before(:each) do
    @theater = assign(:theater, stub_model(Theater,
      :cinema_id => 1,
      :theater_number => 1
    ))
  end

  it "renders the edit theater form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => theaters_path(@theater), :method => "post" do
      assert_select "input#theater_cinema_id", :name => "theater[cinema_id]"
      assert_select "input#theater_theater_number", :name => "theater[theater_number]"
    end
  end
end
