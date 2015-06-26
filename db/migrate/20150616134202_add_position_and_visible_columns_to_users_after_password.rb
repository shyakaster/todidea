class AddPositionAndVisibleColumnsToUsersAfterPassword < ActiveRecord::Migration
  def up
    remove_columns :users,:position,:visible
    add_column :users,:position,:integer, after: :password
    add_column :users,:visible,:boolean, after: :position
  end
  def down
    remove_columns :users,:visible,:position
  end
end
