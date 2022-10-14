# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Start Seeding"

Comment.destroy_all
Image.destroy_all
Category.destroy_all

puts "Seeding Categories"
wallpapers = Category.create(name: "Wallpapers", description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens")

wallpapers.photo.attach(io: File.open('db/images/categories/image 2.png'), filename: 'image2.png')

nature = Category.create(name: "Nature", description: "Let's celebrate the magic of MOther Earth-- with images of everything our planet has to offer")

nature.photo.attach(io: File.open('db/images/categories/image 1.png'), filename: 'image1.png')

people = Category.create(name: "People", description: "Real people, captured.Photography has the power to reflect the world around us, give voice to individuals and groups")

people.photo.attach(io: File.open('db/images/categories/image 12.png'), filename: 'image12.png')

# puts "Seeding images"
# images1 = 
# images2 = 
# images3 = 
# images4 = 
# images5 = 
# images6 = 
puts "Finish Seeding"