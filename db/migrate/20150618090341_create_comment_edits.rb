class CreateCommentEdits < ActiveRecord::Migration
  def up
    create_table :comment_edits do |t|
      t.text :summary
      t.integer :comments_id
      t.integer :admin_users_id

      t.timestamps null: false
    end

  end
  def down
    drop_table :comment_edits
  end
end
