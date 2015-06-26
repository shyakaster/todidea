class AddPositionAndVisibleColumnOnPhotographs < ActiveRecord::Migration
  def up
    add_column :photographs, :visible,:boolean,:after=>:permalink
    add_column :photographs, :position,:integer,:after=>:visible

  end
  def down
    remove_columns :photographs, :visible,:position
  end
end
