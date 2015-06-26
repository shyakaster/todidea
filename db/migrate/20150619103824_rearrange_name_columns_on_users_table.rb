class RearrangeNameColumnsOnUsersTable < ActiveRecord::Migration
  def change
    remove_columns :users,:first_name,:last_name
    add_column :users,:first_name,:string,:after=>:id
    add_column :users,:last_name,:string,:after=>:first_name
  end
end
