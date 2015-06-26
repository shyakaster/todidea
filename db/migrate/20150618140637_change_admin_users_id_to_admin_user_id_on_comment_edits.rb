class ChangeAdminUsersIdToAdminUserIdOnCommentEdits < ActiveRecord::Migration
  def up
    remove_column :comment_edits,:admin_users_id
    add_column :comment_edits,:admin_user_id,:integer
  end
  def down
    add_column :comment_edits,:admin_users_id,:integer
    remove_column :comment_edits,:admin_user_id
  end
end
