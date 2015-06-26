class RemoveCommentIdOnCommentsTable < ActiveRecord::Migration
  def up
    remove_column :comments,:comment_id
    add_column :comments,:photograph_id,:integer,:after=>:article_id
  end
  def down
    add_column :comments,:comment_id,:integer
    remove_column :comments,:photograph_id
  end
end
