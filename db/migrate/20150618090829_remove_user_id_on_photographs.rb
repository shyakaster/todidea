class RemoveUserIdOnPhotographs < ActiveRecord::Migration
  def up
    remove_column :photographs,:user_id
  end
  def down
    add_column :photographs,:user_id,:integer
  end
end
