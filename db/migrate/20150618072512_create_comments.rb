class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.text :comments
      t.integer :user_id
      t.integer :admin_user

      t.timestamps null: false
    end
  end
  def down
    drop_table :comments
  end
end
