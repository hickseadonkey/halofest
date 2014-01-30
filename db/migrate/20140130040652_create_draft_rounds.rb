class CreateDraftRounds < ActiveRecord::Migration
  def change
    create_table :draft_rounds do |t|
      t.integer :round_number
      t.integer :draft_id
      t.integer :pick_count

      t.timestamps
    end
  end
end
