class AddColumnsUsernamePasswordPositionVisibleToAdminUsers < ActiveRecord::Migration
  def up
    add_column :admin_users,:username,:string,null: :false
    add_column :admin_users,:password,:string, null: :false
    add_column :admin_users,:position,:integer
    add_column :admin_users,:visible,:boolean

  end
  def down
    remove_column :admin_users,:username
    remove_column :admin_users,:password
    remove_column :admin_users,:position
    remove_column :admin_users,:visible

  end
end
