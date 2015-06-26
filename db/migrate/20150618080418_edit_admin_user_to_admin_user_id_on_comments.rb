class EditAdminUserToAdminUserIdOnComments < ActiveRecord::Migration
  def up
    rename_column :comments, :admin_user,:admin_user_id
  end
  def down
    rename_column :comments, :admin_user_id,:admin_user
  end
end
