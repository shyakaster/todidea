class AddColumnsToSlider < ActiveRecord::Migration
  def up
    add_column :sliders, :file_name,:string
    add_column :sliders,:position,:integer
    add_column :sliders,:visible,:boolean
  end
  def down
    remove_columns :sliders, :file_name,:position,:visible
  end
end
