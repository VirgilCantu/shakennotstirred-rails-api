class Ingredient < ApplicationRecord
    has_many :cocktail_ingredients
    has_many :cocktails, through: :cocktail_ingredients

    validates :name, presence: true, uniqueness: true
    validates :category, presence: true
    validates :type, presence: true
    validates :origin, presence: true
    
end
