class Cocktail < ApplicationRecord
    has_many :user_cocktails
    has_many :users, through: :user_cocktails
    has_many :cocktail_ingredients
    has_many :ingredients, through: :cocktail_ingredients

    validates :name, presence: true, uniqueness: true
    validates :glassware, presence: true
    validates :ice, presence: true
    validates :preparation, presence: true
    validates :image, presence: true
    
    accepts_nested_attributes_for :ingredients

end
