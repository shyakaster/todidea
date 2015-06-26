class AddUserIdToArticleComments < ActiveRecord::Migration
  def change
    add_column :article_comments, :user_id,:integer,:after=>:id
  end
end
