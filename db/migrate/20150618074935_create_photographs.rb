class CreatePhotographs < ActiveRecord::Migration
  def up
    create_table :photographs do |t|
      t.text :image
      t.integer :user_id
      t.integer :admin_user_id

      t.timestamps null: false
    end
  end
  def down
    drop_table :photographs
  end
end
