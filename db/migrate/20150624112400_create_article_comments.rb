class CreateArticleComments < ActiveRecord::Migration
  def up
    create_table :article_comments do |t|
      t.references :article
      t.references :comment

      t.timestamps null: false
    end
    add_index :article_comments,['article_id','comment_id']
  end
  def down
    drop_table :article_comments
  end
end
