class RemovePemalinkAfterCommentOnCommentsTable < ActiveRecord::Migration
  def up
    remove_column :comments,:pemalink
    add_column :comments,:permalink,:text,:after=>:comment
  end
  def down
    add_column :comments,:pemalink,:text,:after=>:comment
    remove_column :comments,:permalink

  end
end
