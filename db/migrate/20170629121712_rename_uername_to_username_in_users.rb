class RenameUernameToUsernameInUsers < ActiveRecord::Migration[5.1]
  def up
    rename_column :users, :uername, :username
  end
  def down
    rename_column :users, :username, :uername
  end
end
