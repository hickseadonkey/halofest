class CreateKeepers < ActiveRecord::Migration
  def change
    create_table :keepers do |t|

      t.timestamps
    end
  end
end
