require "spec_helper"

describe PlayerStatsController do
  describe "routing" do

    it "routes to #new" do
      get("/players/1/player_stats/new").should route_to("player_stats#new", player_id: "1")
    end

    #it "routes to #edit" do
    #  get("/player_stats/1/edit").should route_to("player_stats#edit", :id => "1")
    #end

    it "routes to #create" do
      post("/players/1/player_stats").should route_to("player_stats#create", player_id: "1")
    end

    #it "routes to #update" do
    #  put("/player_stats/1").should route_to("player_stats#update", :id => "1")
    #end
    #
    #it "routes to #destroy" do
    #  delete("/player_stats/1").should route_to("player_stats#destroy", :id => "1")
    #end
    #
  end
end
