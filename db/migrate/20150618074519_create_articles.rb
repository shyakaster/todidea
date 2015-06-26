class CreateArticles < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.text :articles
      t.integer :user_id
      t.integer :admin_user

      t.timestamps null: false
    end
  end
  def down
    drop_table :articles
  end
end
