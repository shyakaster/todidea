class AddUserToArticlesTable < ActiveRecord::Migration
  def change
    add_column :articles, :user_id,:integer,:after=>:id
  end
end
