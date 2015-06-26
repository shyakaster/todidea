class AddPermalinkAfterAdminUserIdOnArticlesTable < ActiveRecord::Migration
  def up
    add_column :articles,:permalink,:text, :after=>:admin_user_id
  end
  def down
    remove_column :articles,:permalink
  end
end
