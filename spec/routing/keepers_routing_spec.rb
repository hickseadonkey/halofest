require "spec_helper"

describe KeepersController do
  describe "routing" do

    it "routes to #index" do
      get("/keepers").should route_to("keepers#index")
    end

    it "routes to #new" do
      get("/keepers/new").should route_to("keepers#new")
    end

    it "routes to #show" do
      get("/keepers/1").should route_to("keepers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/keepers/1/edit").should route_to("keepers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/keepers").should route_to("keepers#create")
    end

    it "routes to #update" do
      put("/keepers/1").should route_to("keepers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/keepers/1").should route_to("keepers#destroy", :id => "1")
    end

  end
end
