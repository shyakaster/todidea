class AdPasswordDigestToUsersTable < ActiveRecord::Migration
  def up
    add_column :users,:password_digest,:string,:after=>:email
  end
  def down
    remove_column :users,:password
  end
end
