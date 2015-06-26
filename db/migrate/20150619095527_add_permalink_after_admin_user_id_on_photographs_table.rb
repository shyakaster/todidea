class AddPermalinkAfterAdminUserIdOnPhotographsTable < ActiveRecord::Migration
  def up
    add_column :photographs,:permalink,:text,:after=>:admin_user_id
  end
  def down
    remove_column :photographs,:permalink
  end
end
