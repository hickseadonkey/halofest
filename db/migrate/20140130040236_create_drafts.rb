class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.integer :year
      t.string :status

      t.timestamps
    end
  end
end
