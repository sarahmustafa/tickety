require 'spec_helper'

describe "movies/show" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "Title",
      :duration => 1,
      :summary => "Summary",
      :genre => "Genre",
      :actors => "Actors"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Summary/)
    rendered.should match(/Genre/)
    rendered.should match(/Actors/)
  end
end
