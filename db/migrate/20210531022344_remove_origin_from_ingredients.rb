class RemoveOriginFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :origin, :string
  end
end
