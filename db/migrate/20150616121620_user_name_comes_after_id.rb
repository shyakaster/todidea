class UserNameComesAfterId < ActiveRecord::Migration
  def up
    remove_column :users,:name
    add_column :users,:name,:string,after: :id
  end
  def down
    add_column :users,:name,:string
    remove_column :users,:name
  end
end
