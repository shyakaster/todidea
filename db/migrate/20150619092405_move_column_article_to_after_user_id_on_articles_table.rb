class MoveColumnArticleToAfterUserIdOnArticlesTable < ActiveRecord::Migration
  def up
    remove_column :articles, :article
    add_column :articles, :article, :text, :after=>:user_id
  end
  def down
    add_column :articles, :article,:text, :after=>:user_id
    remove_column :articles,:article

  end
end
