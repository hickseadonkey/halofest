class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :user_id
      t.integer :draft_id

      t.timestamps
    end
  end
end
