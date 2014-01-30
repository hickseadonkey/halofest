require "spec_helper"

describe DraftRoundsController do
  describe "routing" do

    it "routes to #index" do
      get("/draft_rounds").should route_to("draft_rounds#index")
    end

    it "routes to #new" do
      get("/draft_rounds/new").should route_to("draft_rounds#new")
    end

    it "routes to #show" do
      get("/draft_rounds/1").should route_to("draft_rounds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/draft_rounds/1/edit").should route_to("draft_rounds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/draft_rounds").should route_to("draft_rounds#create")
    end

    it "routes to #update" do
      put("/draft_rounds/1").should route_to("draft_rounds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/draft_rounds/1").should route_to("draft_rounds#destroy", :id => "1")
    end

  end
end
