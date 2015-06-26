class RemoveSummaryOnPhotographCommentsTable < ActiveRecord::Migration
  def up
    remove_column :photograph_comments,:summary
  end
  def down
    add_column :photograph_comments,:summary,:text,:after=>:comment_id
  end
end
