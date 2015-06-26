class RemoveAdminUserAddUserOnPhotographsTable < ActiveRecord::Migration
  def up
    remove_column :photographs,:admin_user_id
    add_column :photographs,:user_id,:integer,:after=>:id
  end
  def down
    add_column :photographs,:admin_user_id,:integer,:after=>:id
    remove_column :photographs,:user_id
  end
end
