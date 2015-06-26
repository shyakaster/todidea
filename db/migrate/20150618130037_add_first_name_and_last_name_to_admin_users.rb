class AddFirstNameAndLastNameToAdminUsers < ActiveRecord::Migration
  def up
    add_column :admin_users,:first_name,:string,:after=> :updated_at
    add_column :admin_users,:last_name,:string, :after=> :first_name

  end
  def down
    remove_column :admin_users,:first_name
    remove_column :admin_users,:last_name

  end
end
