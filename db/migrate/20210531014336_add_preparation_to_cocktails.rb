class AddPreparationToCocktails < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :preparation, :string
  end
end
