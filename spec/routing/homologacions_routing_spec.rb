require "spec_helper"

describe HomologacionsController do
  describe "routing" do

    it "routes to #index" do
      get("/homologacions").should route_to("homologacions#index")
    end

    it "routes to #new" do
      get("/homologacions/new").should route_to("homologacions#new")
    end

    it "routes to #show" do
      get("/homologacions/1").should route_to("homologacions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/homologacions/1/edit").should route_to("homologacions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/homologacions").should route_to("homologacions#create")
    end

    it "routes to #update" do
      put("/homologacions/1").should route_to("homologacions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/homologacions/1").should route_to("homologacions#destroy", :id => "1")
    end

  end
end
