class EditAdminUserToAdminUserIdOnArticles < ActiveRecord::Migration
  def up
    rename_column :articles, :admin_user,:admin_user_id
  end
  def down
    rename_column :articles, :admin_user_id,:admin_user
  end
end
