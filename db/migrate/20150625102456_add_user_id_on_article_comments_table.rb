class AddUserIdOnArticleCommentsTable < ActiveRecord::Migration
  def up
    add_column :article_comments, :user_id,:integer,:after=>:id
  end
  def down
    remove_column :article_comments,:user_id
  end
end
