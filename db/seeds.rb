# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


	users = User.create([{username: "Biggie", email: "biggie@biggie.com", password_digest: BCrypt::Password.create("12345")}, {username: "Tupac", email: "tupac@tupac.com", password_digest: BCrypt::Password.create("12345")}, {username: "Eminem", email: "eminem@eminem.com", password_digest: BCrypt::Password.create("12345")}])



	Recipe.create(recipe_title: "biggie makes soup",  ingredients: "XYZ", directions: "eat my food", user: users.first)
	Recipe.create(recipe_title: "biggie makes soup",  ingredients: "XYZ", directions: "eat my food", user: users.first)
	Recipe.create(recipe_title: "biggie makes soup",  ingredients: "XYZ", directions: "eat my food", user: users.first) 







