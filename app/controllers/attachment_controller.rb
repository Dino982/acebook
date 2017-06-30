class CreateUsersWithAttachments < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.attachment :avatar
    end
  end

  # This is assuming you are only using the users table for Paperclip attachment. Drop with care!
  def down
    drop_table :users
  end
end
