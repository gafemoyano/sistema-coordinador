require "spec_helper"

describe CoordinadorsController do
  describe "routing" do

    it "routes to #index" do
      get("/coordinadors").should route_to("coordinadors#index")
    end

    it "routes to #new" do
      get("/coordinadors/new").should route_to("coordinadors#new")
    end

    it "routes to #show" do
      get("/coordinadors/1").should route_to("coordinadors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coordinadors/1/edit").should route_to("coordinadors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coordinadors").should route_to("coordinadors#create")
    end

    it "routes to #update" do
      put("/coordinadors/1").should route_to("coordinadors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coordinadors/1").should route_to("coordinadors#destroy", :id => "1")
    end

  end
end
