class ChangeColumnCommentsIdToCommentIdOnCommentEdits < ActiveRecord::Migration
  def up
    remove_column :comment_edits,:comments_id
    add_column :comment_edits,:comment_id,:text,:after=>:summary
  end
  def down
    add_column :comment_edits,:comments_id,:text
    remove_column :comment_edits,:comment_id

  end
end
