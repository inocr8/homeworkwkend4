# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all

c1 = Category.create!(name: 'Detox', colour: 'Green')
c2 = Category.create!(name: 'Energy', colour: 'Red')
c3 = Category.create!(name: 'Revitalise', colour: 'Orange')
c4 = Category.create!(name: 'Zest', colour: 'Yellow')
c5 = Category.create!(name: 'Cleanse', colour: 'Purple')

Recipe.delete_all

r1 = Recipe.create!(name: 'Beginner Green', description: 'This is for beginners that want to start juicing without the need for hefty weights and lycra shorts.', food_parts: 'Apples - 3 medium (3 dia) 546g, Celery - 4 large (11-12 long) 256g, Ginger Root - 1/4 thumb (1 dia) 6g, Lemon (with rind) - 1/2 fruit (2-1/8 dia) 29g, Orange (peeled) - 1 large (3-1/16 dia) 184g, Spinach - 5 handful 125g', directions: 'You do not have to peel the lemon, but make sure you peel the orange. Orange skin is very bitter and can ruin the flavour.', benefits: 'Lower blood pressure, Bone protection, Improved complexion, Cancer prevention, Asthma help, Breast cancer prevention aid, Better digestion')
r2 = Recipe.create!(name: 'Beet Retreat', description: 'This is a juice that uses Beetroot, there is probably nothing tasty about it. Best add vodka.', food_parts: 'Apples - 2 medium (3" dia) 364g, Beet Root - 1 beet (2" dia) 82g, Carrots - 7 medium 427g, Ginger Root - 1/2 thumb (1" dia) 12g, Lemon - 1/2 fruit (2-1/8" dia) 29g', directions: 'Process all ingredients in a juicer, shake or stir and serve. Serve it like you own it.', benefits: 'Lower cholesterol, Better digestion, Lung cancer prevention aid, Improved complexion, Improved eyesight, Macular degeneration prevention aid, Reduce water retention, Stroke prevention aid')
r3 = Recipe.create!(name: 'Appleberry Lush', description: 'It is orange, therefore you will be very attractive to rabbits and potentially badgers. This is a good thing.', food_parts: 'Apple - 1 medium (3" dia) 182g, Carrots - 7 medium 427g, Strawberry (heaping) - 1 cup, whole 144g', directions: 'Chuck it in a blender then shakey, shakey, shakey until you feel it is blended. Feel it.', benefits: 'Immune system booster, Better digestion, Improved eyesight, Lower cholesterol, Heart disease prevention aid, Detoxification, Reduced inflammation')
r4 = Recipe.create!(name: 'Mango Tango', description: 'It has mango, it probably does not have tango but it will cost you cash.', food_parts: 'Mango (peeled) - 1 fruit without refuse 336g, Pineapple - 1 fruit 905g', directions: 'Quick two step with these fruits and a wiggle, jiggle, jiggle, then you are done.  Yum yum.', benefits: 'Better dance moves, Detoxification of your feet, Cats will find you far more attractive, Boost that immune system, Sparkling eyes, Bigger nose, Heart will pump like a rock star, Lower cholesterol')
r5 = Recipe.create!(name: 'Blackberry Pop', description: 'Blackberries and pop, these are two classic ingredients everybody looks for in juice. You will find, once you pop you can go.', food_parts: 'Blackberry - 1 cup 144g, Kiwifruit - 1 fruit (2" dia) 69g, Pear - 1 medium 178g, Peppermint (optional) - 10 leaves 0.5g, Pineapple (peeled, cored) - 1/4 fruit 226.25g', directions: 'Chuck everything into a bucket and smash it together with a hammer, then guzzle it down like you are in a prison yard and this is a bucket of hot wings.', benefits: 'Osteoporosis prevention, Lots more energy, Reduce inflammation, Extra antioxidants, Mental health aid, Better digestion, Run like a whippet, Increased sauciness')

c1.recipes << r1
c2.recipes << r2
c3.recipes << r3
c4.recipes << r4
c5.recipes << r5

Ingredient.delete_all

i1 = Ingredient.create!(name: 'Apple', group: 'Fruit')
i2 = Ingredient.create!(name: 'Celery', group: 'Vegetable')
i3 = Ingredient.create!(name: 'Ginger Root', group: 'Vegetable')
i4 = Ingredient.create!(name: 'Lemon', group: 'Fruit')
i5 = Ingredient.create!(name: 'Orange', group: 'Fruit')
i6 = Ingredient.create!(name: 'Beetroot', group: 'Vegetable')
i7 = Ingredient.create!(name: 'Strawberry', group: 'Fruit')
i8 = Ingredient.create!(name: 'Mango', group: 'Fruit')
i9 = Ingredient.create!(name: 'Pineapple', group: 'Fruit')
i10 = Ingredient.create!(name: 'Blackberry', group: 'Fruit')
i11 = Ingredient.create!(name: 'Kiwifruit', group: 'Fruit')
i12 = Ingredient.create!(name: 'Pear', group: 'Fruit')
i13 = Ingredient.create!(name: 'Peppermint', group: 'Herb')
i14 = Ingredient.create!(name: 'Spinach', group: 'Herb')


