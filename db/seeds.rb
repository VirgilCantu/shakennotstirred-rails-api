# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------------------Users--------------------#

john_smith = User.create(
    name: "John Smith",
    username: "JohnSmith",
    location: "Denver, CO"
)

mary_parker = User.create(
    name: "Mary Parker",
    username: "MaryParker",
    location: "Miami, FL"
)

julian_gonzalez = User.create(
    name: "Julian Gonzalez",
    username: "JulianGonzalez"
    location: "San Francisco, CA"
)

rachel_frink = User.create(
    name: "Rachel Frink",
    username: "RachelFrink",
    location: "Minneapolis, MN"
)

joshua_clemens = User.create(
    name: "Joshua Clemens",
    username: "JoshuaClemens",
    location: "Seattle, WA"
)

#----------------------Cocktails--------------------#

margarita = Cocktail.create(
    name: "Margarita",
    glassware: "Margarita",
    ice: "Cubed",
    image: "https://upload.wikimedia.org/wikipedia/commons/3/37/MargaritaReal.jpg",
    origin: "Tijuana, Mexico",
    preparation: "Rub the rim of the glass with the lime slice to make the salt stick to it. Shake the other ingredients with ice, then pour into the glass."
)

negroni = Cocktail.create(
    name: "Negroni",
    glassware: "Old-Fashioned",
    ice: "Large Cube",
    image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Negroni_served_in_Vancouver_BC.jpg",
    origin: "Florence, Italy",
    preparation: "Stir into glass over ice, garnish and serve."
)

mai_tai = Cocktail.create(
    name: "Mai Tai",
    glassware: "Old-Fashioned",
    ice: "Crushed",
    image: "https://upload.wikimedia.org/wikipedia/commons/7/74/Mai_Tai_Trader_Vics_Emeryville.jpg",
    origin: "Oakland, CA",
    preparation: "Shake all ingredients with ice. Strain into glass. Garnish and serve with straw."
)

mint_julep = Cocktail.create(
    name: "Mint Julep",
    glassware: "Julep Tin",
    ice: "Crushed",
    image: "https://upload.wikimedia.org/wikipedia/commons/5/55/Mint_Julep_im_Silberbecher.jpg",
    origin: "Williamsburg, VA",
    preparation: "In a julep tin gently muddle the mint, sugar and water. Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig."
)

mojito = Cocktail.create(
    name: "Mojito",
    glassware: "Collins",
    ice: "Crushed",
    image: "https://upload.wikimedia.org/wikipedia/commons/0/01/Mojito98775.jpeg",
    origin: "Havana, Cuba",
    preparation: "Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw."
)

#----------------------Ingredients--------------------#

tequila = Ingredient.create(
    name: "Tequila",
    category: "Spirits",
    type: "Tequila"
)

triple_sec = Ingredient.create(
    name: "Triple Sec",
    category: "Spirits",
    type: "Liqueur"
)

lime_juice = Ingredient.create(
    name: "Lime Juice",
    category: "Produce",
    type: "Juice"
)

lime_wedge = Ingredient.create(
    name: "Lime Wedge",
    category: "Produce",
    type: "Garnish"
)

gin = Ingredient.create(
    name: "Gin",
    category: "Spirits",
    type: "Gin"
)

sweet_vermouth = Ingredient.create(
    name: "Sweet Vermouth",
    category: "Fortified Wines",
    type: "Vermouth"
)

campari = Ingredient.create(
    name: "Campari",
    category: "Spirits",
    type: "Liqueur"
)

orange_peel = Ingredient.create(
    name: "Orange Peel",
    category: "Produce",
    type: "Garnish"
)

aged_rum = Ingredient.create(
    name: "Aged Rum",
    category: "Spirits",
    type: "Rum"
)

white_rum = Ingredient.create(
    name: "White Rum",
    category: "Spirits",
    type: "Rum"
)

orgeat = Ingredient.create(
    name: "Orgeat",
    category: "Syrups",
    type: "Almond Syrup"
)

overproof_rum = Ingredient.create(
    name: "Overproof Rum",
    category: "Spirits",
    type: "Rum"
)

pineapple_flag = Ingredient.create(
    name: "Pineapple Flag",
    category: "Produce",
    type: "Garnish"
)

mint = Ingredient.create(
    name: "Mint",
    category: "Produce",
    type: "Herbs"
)

bourbon = Ingredient.create(
    name: "Bourbon",
    category: "Spirits",
    type: "Whisky"
)

simple_syrup = Ingredient.create(
    name: "Simple Syrup",
    category: "Syrups",
    type: "Sugar Syrup"
)

mint_bouquet = Ingredient.create(
    name: "Mint Bouquet",
    category: "Produce",
    type: "Garnish"
)

soda_water = Ingredient.create(
    name: "Soda Water",
    category: "Non-Alcoholic",
    type: "Carbonated Beverages"
)

lime_wheel = Ingredient.create(
    name: "Lime Wheel",
    category: "Produce",
    type: "Garnish"
)
