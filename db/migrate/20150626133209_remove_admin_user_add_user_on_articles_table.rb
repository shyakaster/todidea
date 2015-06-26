class RemoveAdminUserAddUserOnArticlesTable < ActiveRecord::Migration
  def up
    remove_column :articles,:admin_user_id
    add_column :articles,:user_id,:integer,after: :id
  end
  def down
    add_column :articles,:admin_user_id,:integer, after: :id
    remove_column :articles,:user_id
  end
end
