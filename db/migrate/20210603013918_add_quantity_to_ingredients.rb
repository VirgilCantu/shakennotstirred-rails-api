class AddQuantityToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :quantity, :text
  end
end
