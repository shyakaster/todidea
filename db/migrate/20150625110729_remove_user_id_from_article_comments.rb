class RemoveUserIdFromArticleComments < ActiveRecord::Migration
  def up
    remove_column :article_comments, :user_id
  end
  def down
    add_column :article_comments, :user_id,:integer,:after=>:id
  end
end
