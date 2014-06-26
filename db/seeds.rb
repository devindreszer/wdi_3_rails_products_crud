# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

puts "Creating 20 Products"
product_count = 20

product_count.times do |i|
  Product.create!(
    name: "Product #{i}",
    description: "Description #{i}",
    price: rand(100) + (rand(100)/100.to_f).round(2)
  )
end

Song.delete_all

puts "Creating 20 Songs"
song_count = 20

song_count.times do |i|
  Song.create!(
    title: Faker::Company.catch_phrase,
    artist: Faker::Name.name,
    duration: rand(360),
    price: rand(5) + (rand(100)/100.to_f).round(2)
    )
end
