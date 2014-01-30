class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :user_id
      t.integer :draft_round_id
      t.integer :pick_num
      t.string :pick_kind
      t.integer :pre_picked_player_id
      t.integer :picked_player_id

      t.timestamps
    end
  end
end
