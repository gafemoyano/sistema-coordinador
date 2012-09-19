require "spec_helper"

describe MateriaController do
  describe "routing" do

    it "routes to #index" do
      get("/materia").should route_to("materia#index")
    end

    it "routes to #new" do
      get("/materia/new").should route_to("materia#new")
    end

    it "routes to #show" do
      get("/materia/1").should route_to("materia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/materia/1/edit").should route_to("materia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/materia").should route_to("materia#create")
    end

    it "routes to #update" do
      put("/materia/1").should route_to("materia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/materia/1").should route_to("materia#destroy", :id => "1")
    end

  end
end
