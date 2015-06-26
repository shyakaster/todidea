class MoveColumnCommentsT0AfterUserIdOnCommentsTable < ActiveRecord::Migration
  def up
    remove_column :comments, :comment
    add_column :comments,:comment, :text, :after=>:user_id
  end
  def down
    add_column :comments, :comment,:text, :after=>:user_id
    remove_column :comments,:comment

  end
end
