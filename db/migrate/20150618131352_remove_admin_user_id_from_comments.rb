class RemoveAdminUserIdFromComments < ActiveRecord::Migration
  def up
    remove_column :comments,:admin_user_id
  end
  def down
    add_column :comments,:admin_user_id,:integer

  end
end
