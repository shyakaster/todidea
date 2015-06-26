class AddPositionAndVisibleColumnsToUsers < ActiveRecord::Migration
  def up
    add_column :users,:position,:integer
    add_column :users,:visible,:boolean
  end
  def down
    remove_column :users,:position
    remove_column :users,:visible
  end
end
