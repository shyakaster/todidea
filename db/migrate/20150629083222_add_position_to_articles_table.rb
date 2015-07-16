class AddPositionToArticlesTable < ActiveRecord::Migration
  def up
    add_column :articles,:position,:integer,:after=>:permalink
  end
  def down
    remove_column :articles,:position
  end
end
