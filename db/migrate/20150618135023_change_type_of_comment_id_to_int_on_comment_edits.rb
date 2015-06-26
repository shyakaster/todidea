class ChangeTypeOfCommentIdToIntOnCommentEdits < ActiveRecord::Migration
  def up
    change_column :comment_edits,:comment_id,:integer
  end
  def down

  end
end
