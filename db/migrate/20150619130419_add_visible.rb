class AddVisible < ActiveRecord::Migration
  def up
    add_column :comments,:visible,:boolean
  end
  def down
    remove_column :comments, :visible
  end
end
