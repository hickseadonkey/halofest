class AddTpmToPlayerStats < ActiveRecord::Migration
  def change
    add_column :player_stats, :tpm, :float
  end
end
