require 'spec_helper'

describe "theaters/new" do
  before(:each) do
    assign(:theater, stub_model(Theater,
      :cinema_id => 1,
      :theater_number => 1
    ).as_new_record)
  end

  it "renders new theater form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => theaters_path, :method => "post" do
      assert_select "input#theater_cinema_id", :name => "theater[cinema_id]"
      assert_select "input#theater_theater_number", :name => "theater[theater_number]"
    end
  end
end
