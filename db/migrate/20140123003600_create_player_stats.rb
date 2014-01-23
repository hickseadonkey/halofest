class CreatePlayerStats < ActiveRecord::Migration
  def change
    create_table :player_stats do |t|
      t.integer :player_id
      t.integer :year
      t.float :fpts_total
      t.float :fpts_avg

      t.timestamps
    end
  end
end
