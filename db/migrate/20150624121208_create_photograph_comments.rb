class CreatePhotographComments < ActiveRecord::Migration
  def up
    create_table :photograph_comments do |t|
      t.references :photograph
      t.references :comment
      t.string :summary

      t.timestamps null: false
    end
    add_index :photograph_comments,["photograph_id","comment_id"]
  end
  def down

    drop_table :photograph_comments

  end
end
