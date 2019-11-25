# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mojito = Cocktail.create(name: 'mojito')

lemon = Ingredient.create(name: 'lemon')
ice = Ingredient.create(name: 'ice')
mint_leaves = Ingredient.create(name: 'mint leaves')

Dose.create(description: '6 cl', ingredient: lemon, cocktail: Mojito)
Dose.create(description: '4 cubes', ingredient: ice, cocktail: Mojito)
Dose.create(description: '3 strands', ingredient: mint_leaves, cocktail: Mojito)


Picon bière = Cocktail.create(name: 'picon bière')

picon = Ingredient.create(name:'picon')
beer = Ingredient.create(name:'beer')

Dose.create(description: '3 cl', ingredient: picon, cocktail: Picon bière)
Dose.create(description: '12 cl', ingredient: beer, cocktail: Picon bière)


Kir royal = Cocktail.create(name: 'kir royal')

crème de cassis = Ingredient.create(name:'crème de cassis')
champagne = Ingredient.create(name:'champagne')

Dose.create(description: '2 cl', ingredient: crème de cassis, cocktail: kir royal)
Dose.create(description: '9 cl', ingredient: champagne, cocktail: kir royal)
