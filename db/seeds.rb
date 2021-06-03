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
    username: "JulianGonzalez",
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
    preparation: "Muddle mint leaves with syrup and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw."
)

#----------------------Ingredients--------------------#

tequila = Ingredient.create(
    name: "Tequila",
    category: "Spirits",
    subcategory: "Tequila",
    quantity: "1.5 oz"
)

triple_sec = Ingredient.create(
    name: "Triple Sec",
    category: "Spirits",
    subcategory: "Liqueur",
    quantity: "0.5 oz"

)

lime_juice_one = Ingredient.create(
    name: "Lime Juice",
    category: "Produce",
    subcategory: "Juice",
    quantity: "1 oz"
)

lime_wedge = Ingredient.create(
    name: "Lime Wedge",
    category: "Produce",
    subcategory: "Garnish",
    quantity: "1 wedge"
)

gin = Ingredient.create(
    name: "Gin",
    category: "Spirits",
    subcategory: "Gin",
    quantity: "1 oz"
)

sweet_vermouth = Ingredient.create(
    name: "Sweet Vermouth",
    category: "Fortified Wines",
    subcategory: "Vermouth",
    quantity: "1 oz"
)

campari = Ingredient.create(
    name: "Campari",
    category: "Spirits",
    subcategory: "Liqueur",
    quantity: "1 oz"
)

orange_peel = Ingredient.create(
    name: "Orange Peel",
    category: "Produce",
    subcategory: "Garnish",
    quantity: "1 peel"
)

aged_rum = Ingredient.create(
    name: "Aged Rum",
    category: "Spirits",
    subcategory: "Rum",
    quantity: "1 oz"
)

white_rum = Ingredient.create(
    name: "White Rum",
    category: "Spirits",
    subcategory: "Rum",
    quantity: "1 oz"
)

orgeat = Ingredient.create(
    name: "Orgeat",
    category: "Syrups",
    subcategory: "Almond Syrup",
    quantity: "0.5 oz"
)

overproof_rum = Ingredient.create(
    name: "Overproof Rum",
    category: "Spirits",
    subcategory: "Rum",
    quantity: "Float"
)

pineapple_flag = Ingredient.create(
    name: "Pineapple Flag",
    category: "Produce",
    subcategory: "Garnish",
    quantity: "1 flag"
)

mint = Ingredient.create(
    name: "Mint",
    category: "Produce",
    subcategory: "Herbs",
    quantity: "4 - 5 leaves"
)

bourbon = Ingredient.create(
    name: "Bourbon",
    category: "Spirits",
    subcategory: "Whisky",
    quantity: "2 oz"
)

simple_syrup = Ingredient.create(
    name: "Simple Syrup",
    category: "Syrups",
    subcategory: "Sugar Syrup",
    quantity: "0.5 oz"
)

mint_bouquet = Ingredient.create(
    name: "Mint Bouquet",
    category: "Produce",
    subcategory: "Garnish",
    quantity: "1 bouquet"
)

soda_water = Ingredient.create(
    name: "Soda Water",
    category: "Non-Alcoholic",
    subcategory: "Carbonated Beverages",
    quantity: "Fill"
)

lime_wheel = Ingredient.create(
    name: "Lime Wheel",
    category: "Produce",
    subcategory: "Garnish",
    quantity: "1 wheel"
)

#----------------------Cocktail + Ingredient - Associations--------------------#

margarita.ingredients << [tequila, triple_sec, lime_juice_one, lime_wedge]
negroni.ingredients << [gin, sweet_vermouth, campari, orange_peel]
mai_tai.ingredients << [aged_rum, white_rum, lime_juice_one, triple_sec, orgeat, overproof_rum]
mint_julep.ingredients << [mint, bourbon, simple_syrup, mint_bouquet]
mojito.ingredients << [white_rum, simple_syrup, lime_juice, soda_water, lime_wheel, mint_bouquet]

#----------------------User + Cocktail - Associations--------------------#


john_smith.cocktails << [margarita, mai_tai]
mary_parker.cocktails << [negroni, mint_julep]
julian_gonzalez.cocktails << [mai_tai, mojito]
rachel_frink.cocktails << [negroni, mojito]
joshua_clemens.cocktails << [margarita, mint_julep]