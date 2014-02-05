class AddStatsToPlayerStats < ActiveRecord::Migration
  def change
    add_column :player_stats, :fgm, :float
    add_column :player_stats, :fga, :float
    add_column :player_stats, :ftm, :float
    add_column :player_stats, :fta, :float
    add_column :player_stats, :reb, :float
    add_column :player_stats, :ast, :float
    add_column :player_stats, :stl, :float
    add_column :player_stats, :blk, :float
    add_column :player_stats, :to, :float
    add_column :player_stats, :pts, :float
  end
end
