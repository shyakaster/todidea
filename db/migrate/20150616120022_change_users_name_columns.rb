class ChangeUsersNameColumns < ActiveRecord::Migration
  def up
    remove_columns :users, :first_name,:last_name
    add_column :users,:name,:string,after: :id
  end
  def down
    add_column :users, :first_name,:string
    add_column :users, :last_name_name,:string
    remove_column :users,:name
  end
end
