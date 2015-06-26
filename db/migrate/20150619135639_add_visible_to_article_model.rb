class AddVisibleToArticleModel < ActiveRecord::Migration
  def up
    add_column :articles,:visible,:boolean
  end
  def down
    remove_column :articles,:visible
  end
end
