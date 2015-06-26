class ChangeColumnCommentsToCommentOnCommentsTable < ActiveRecord::Migration
  def up
    remove_column :comments, :comments
    add_column :comments, :comment,:text
  end
  def down
    add_column :comments, :comments, :text
    remove_column :comments, :comment

  end
end
