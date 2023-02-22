# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating 10 flats..."

20.times do
  word = (2..4).to_a.sample
  name = Faker::Lorem.sentence(word_count: word)
  address = Faker::Address.full_address
  sentence = (4..10).to_a.sample
  description = Faker::Lorem.paragraph(sentence_count: sentence)
  price_per_night = (50..200).to_a.sample
  number_of_guests = (2..10).to_a.sample
  attributes = { name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests }
  Flat.create!(attributes)

  puts "Created #{name}"
end

puts "Finished!"
