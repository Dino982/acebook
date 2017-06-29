class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :uername, :text
  end
end
