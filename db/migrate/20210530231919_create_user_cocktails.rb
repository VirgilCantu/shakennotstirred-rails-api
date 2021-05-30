class CreateUserCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_cocktails do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
