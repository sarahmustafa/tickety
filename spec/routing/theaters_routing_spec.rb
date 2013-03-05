require "spec_helper"

describe TheatersController do
  describe "routing" do

    it "routes to #index" do
      get("/theaters").should route_to("theaters#index")
    end

    it "routes to #new" do
      get("/theaters/new").should route_to("theaters#new")
    end

    it "routes to #show" do
      get("/theaters/1").should route_to("theaters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/theaters/1/edit").should route_to("theaters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/theaters").should route_to("theaters#create")
    end

    it "routes to #update" do
      put("/theaters/1").should route_to("theaters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/theaters/1").should route_to("theaters#destroy", :id => "1")
    end

  end
end
