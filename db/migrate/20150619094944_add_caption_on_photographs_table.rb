class AddCaptionOnPhotographsTable < ActiveRecord::Migration
  def up
    add_column :photographs, :caption,:text,:after=>:image
  end
  def down
    remove_column :photographs,:caption

  end
end
