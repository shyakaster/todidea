class ChangeColumnArticlesToArticleOnArticlesTable < ActiveRecord::Migration
  def up
    remove_column :articles, :articles
    add_column :articles, :article, :text
  end
  def down
    add_column :articles, :articles,:text
    remove_column :articles, :article
  end
end
