# require "open-uri"
puts "Creating User"
a_user = []
a_user << User.create!(email: "alisa.siegmund@gmail.com", password: "123456", password_confirmation: "123456")
puts "Created 1 User..."

puts "Creating Recipes"

recipes = []
r_names = ["Apple Cake", "Cheese Cake", "Spaghetti Pomodoro", "Veganes Gulasch"]
r_cat = ["savory", "sweet"]
# r_img = cl_image_path("9hBAV7M5fcpZB8eNNv3GRnwp.png")
r_img = "https://res.cloudinary.com/siggimsiggi/image/upload/v1580572763/9hBAV7M5fcpZB8eNNv3GRnwp.png"


recipe_one = Recipe.create!(name: r_names[0], category: r_cat[1], user_id: 1, publish: true)
recipe_two = Recipe.create!(name: r_names[1], category: r_cat[1], user_id: 1, publish: true)
recipe_thr = Recipe.create!(name: r_names[2], category: r_cat[0], user_id: 1, publish: true)
recipe_fou = Recipe.create!(name: r_names[3], category: r_cat[0], user_id: 1, publish: false)

recipes << recipe_one
recipes << recipe_two
recipes << recipe_thr
recipes << recipe_fou

puts "Created 4 Recipes #{recipes}"

# puts "Adding Photos to Recipes"
# file_one = URI.open('https://www.eat-this.org/wp-content/uploads/2019/09/einfacher_veganer_apfelkuchen_mit_streuseln-3-800x1200@2x.jpg')
# recipe_one.photo.attach(io: file_one, filename: 'recipe_one.png', content_type: 'image/png')

# file_two = URI.open('https://images.ctfassets.net/nf38yhm0afx3/6SthzyfX2DjphyFQbW92Hb/2bb478fc3a9f883e710b630a5d6ebee2/R361_Veganer_New_York_Cheesecake21.jpg?w=1646&h=1102&fit=thumb&q=60')
# recipe_two.photo.attach(io: file_two, filename: 'recipe_two.png', content_type: 'image/png')

# file_thr = URI.open('https://www.eat-this.org/wp-content/uploads/2019/01/spaghetti-napoli-pasta-al-pomodoro-3-1280x854@2x.jpg')
# recipe_thr.photo.attach(io: file_thr, filename: 'recipe_thr.png', content_type: 'image/png')

# file_fou = URI.open('https://images.ctfassets.net/nf38yhm0afx3/KVJOWFyAjZmodjo8gP0ZR/cc1aa32d8878b5479d10558fac624671/kartoffelklossegulaschrotkraut-7.jpg?w=1646&h=1102&fit=thumb&q=60')
# recipe_fou.photo.attach(io: file_fou, filename: 'recipe_fou.png', content_type: 'image/png')

# puts "Added Photos to Recipes"

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





