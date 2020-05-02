# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Creating Doses"

# doses = []
# d_des = ['100g', '200g', '50g', '250g']

# doses << Dose.create!(description: d_des[0])
# doses << Dose.create!(description: d_des[1])
# doses << Dose.create!(description: d_des[2])
# doses << Dose.create!(description: d_des[3])

# puts "Created 4 Doses"


# puts "Creating Ingredients"

# ingredients = []
# i_names = ['flour', 'butter', 'sugar', 'cinnamon', 'raisins', 'milk']

# ingredients << Ingredient.create!(name: i_names[0], dose: doses[0])
# ingredients << Ingredient.create!(name: i_names[1], dose: doses[1])
# ingredients << Ingredient.create!(name: i_names[2], dose: doses[2])
# ingredients << Ingredient.create!(name: i_names[3], dose: doses[3])
# ingredients << Ingredient.create!(name: i_names[4], dose: doses[2])
# ingredients << Ingredient.create!(name: i_names[5], dose: doses[1])

# puts "Created 6 Ingredients"

puts "Creating Recipes"

recipes = []
r_names = ["Apple Cake", "Cheese Cake", "Spinach Pasta", "Lasagne"]
r_cat = ["savory", "sweet"]
# r_img = cl_image_path("9hBAV7M5fcpZB8eNNv3GRnwp.png")
r_img = "https://res.cloudinary.com/siggimsiggi/image/upload/v1580572763/9hBAV7M5fcpZB8eNNv3GRnwp.png"


recipe_one = Recipe.create!(name: r_names[0], category: r_cat[1])
recipe_two = Recipe.create!(name: r_names[1], category: r_cat[1])
recipe_thr = Recipe.create!(name: r_names[2], category: r_cat[0])
recipe_fou = Recipe.create!(name: r_names[3], category: r_cat[0])

# puts "photo #{recipe_fou.photo.attached?}"

# recipe_one.photo.attach("https://res.cloudinary.com/siggimsiggi/image/upload/v1580572763/9hBAV7M5fcpZB8eNNv3GRnwp.png")
# recipe_two.photo.attach("https://res.cloudinary.com/siggimsiggi/image/upload/v1580572763/9hBAV7M5fcpZB8eNNv3GRnwp.png")
# recipe_thr.photo.attach("https://res.cloudinary.com/siggimsiggi/image/upload/v1580572763/9hBAV7M5fcpZB8eNNv3GRnwp.png")
# recipe_fou.photo.attach("https://res.cloudinary.com/siggimsiggi/image/upload/v1580572763/9hBAV7M5fcpZB8eNNv3GRnwp.png")


recipes << recipe_one
recipes << recipe_two
recipes << recipe_thr
recipes << recipe_fou

puts "Created 4 Recipes #{recipes}"

# puts "Creating Recipe-Ingredients"

# recipe_ingredients = []

# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[0], ingredient: ingredients[0])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[0], ingredient: ingredients[1])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[0], ingredient: ingredients[2])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[1], ingredient: ingredients[2])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[1], ingredient: ingredients[3])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[1], ingredient: ingredients[5])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[2], ingredient: ingredients[0])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[2], ingredient: ingredients[1])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[2], ingredient: ingredients[4])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[3], ingredient: ingredients[0])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[3], ingredient: ingredients[4])
# recipe_ingredients << RecipeIngredient.create!(recipe: recipes[3], ingredient: ingredients[3])

# puts "Adding 3 Ingredients to each Recipe"


puts "Creating User"
a_user = []
a_user << User.create!(email: "alisa.siegmund@gmail.com", password: "123456", password_confirmation: "123456")
puts "Created 1 User..."


