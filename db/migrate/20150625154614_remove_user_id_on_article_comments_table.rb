class RemoveUserIdOnArticleCommentsTable < ActiveRecord::Migration
  def change
    remove_column :article_comments,:user_id
  end
end
