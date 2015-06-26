class AddArticleIDandPhotographIdOnCommentsTable < ActiveRecord::Migration
  def up
    add_column :comments, :comment_id, :integer, :after=>:user_id
    add_column :comments, :article_id,:integer,:after=>:id
  end
  def down
    remove_columns :comments,:comment_id,:article_id

  end
end
