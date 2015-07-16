class AddPositionToCommentsTable < ActiveRecord::Migration
  def up
    add_column :comments,:position,:integer,:after=>:permalink
  end
  def down
    remove_column :comments,:position
  end
end
