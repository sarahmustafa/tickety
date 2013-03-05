require 'spec_helper'

describe "cinemas/edit" do
  before(:each) do
    @cinema = assign(:cinema, stub_model(Cinema,
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit cinema form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cinemas_path(@cinema), :method => "post" do
      assert_select "input#cinema_name", :name => "cinema[name]"
      assert_select "input#cinema_location", :name => "cinema[location]"
    end
  end
end
