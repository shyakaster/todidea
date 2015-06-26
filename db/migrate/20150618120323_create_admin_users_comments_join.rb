class CreateAdminUsersCommentsJoin < ActiveRecord::Migration
  def up
    #very important to suppress the primary key on a join table
    create_table :admin_users_comments,:id=>false do |t|
      t.integer 'admin_user_id'
      t.integer 'comment_id'
    end
    add_index :admin_users_comments,["admin_user_id", "comment_id"]
  end
  def down
    drop_table :admin_users_comments
  end
end
