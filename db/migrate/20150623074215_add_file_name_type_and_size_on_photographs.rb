class AddFileNameTypeAndSizeOnPhotographs < ActiveRecord::Migration
  def up
    remove_column :photographs,:image
    add_column :photographs, :file_name,:string,:after=>:permalink
    add_column :photographs,:type,:string,:after=>:file_name
    add_column :photographs,:size,:integer,:after=>:type
  end
  def down
    add_column :photographs,:image,:string
    remove_columns :photographs,:file_name,:type, :size
  end
end
