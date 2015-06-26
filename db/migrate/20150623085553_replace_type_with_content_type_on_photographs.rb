class ReplaceTypeWithContentTypeOnPhotographs < ActiveRecord::Migration
  def up
    remove_column :photographs,:type
    add_column :photographs,:content_type,:string,:after=>:file_name
  end
  def down
    add_column :photographs,:type,:string
    remove_column :photographs,:content_type

  end
end
