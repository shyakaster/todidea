class AddPermalinkAfterCommentOnCommentsTable < ActiveRecord::Migration
  def up
    add_column :comments,:pemalink, :text,:after=>:comment
  end
  def down
    remove_column :comments,:pemalink

  end
end
