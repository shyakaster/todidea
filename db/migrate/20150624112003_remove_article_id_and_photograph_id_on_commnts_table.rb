class RemoveArticleIdAndPhotographIdOnCommntsTable < ActiveRecord::Migration
  def up
    remove_columns :comments,:article_id,:photograph_id
  end
  def down
    add_column :comments, :article_id,:integer
    add_column :comments, :photograph_id,:integer
  end
end
