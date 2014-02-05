class CreatePlayersRostersJoinTable < ActiveRecord::Migration
  def change
    create_table :players_rosters do |t|
      t.integer :player_id
      t.integer :roster_id
    end
  end
end
