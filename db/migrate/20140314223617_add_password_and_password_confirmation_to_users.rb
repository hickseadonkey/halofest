class AddPasswordAndPasswordConfirmationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :password_confirmation, :string
    add_column :users, :password_digest, :string
  end
end
