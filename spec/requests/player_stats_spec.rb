require 'spec_helper'

describe "PlayerStats" do
  describe "GET /player_stats" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get player_stats_path
      response.status.should be(200)
    end
  end
end
