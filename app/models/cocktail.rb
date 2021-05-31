class Cocktail < ApplicationRecord
    has_many :user_cocktails
    has_many :cocktails, through: :user_cocktails
    has_many :cocktail_ingredients
    has_many :cocktails, through: :cocktail_ingredients

    validates :name, presence: true, uniqueness: true
    validates :glassware, presence: true
    validates :ice, presence: true
end
