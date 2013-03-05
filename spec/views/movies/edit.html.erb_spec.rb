require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "MyString",
      :duration => 1,
      :summary => "MyString",
      :genre => "MyString",
      :actors => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path(@movie), :method => "post" do
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_duration", :name => "movie[duration]"
      assert_select "input#movie_summary", :name => "movie[summary]"
      assert_select "input#movie_genre", :name => "movie[genre]"
      assert_select "input#movie_actors", :name => "movie[actors]"
    end
  end
end
