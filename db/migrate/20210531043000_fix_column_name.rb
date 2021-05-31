class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :ingredients, :type, :subcategory
  end
end
