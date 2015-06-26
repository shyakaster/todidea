class AddIndexToCommentEditsRichJoin < ActiveRecord::Migration
  def up
    add_index :comment_edits,[:comment_id,:admin_users_id]
  end
  def down
    remove_index :comment_edits
  end
end
