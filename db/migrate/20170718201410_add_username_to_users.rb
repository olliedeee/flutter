class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method is translated to SQL code and modified the database (currently SQLite)
  
  add_column :users, :username, :string # adds a new column to table "users", called "username" and of type "string"
  add_index :users, :username, unique:
  true # first index the username column for rapid lookup, and then ensure usernames are always unique.
  end
end
