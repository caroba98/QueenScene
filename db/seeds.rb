# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb


Queen.destroy_all
User.destroy_all


user = User.create!(
  name: "Admin User",
  email: "admin@example.com",
  password: "password123",
  address: "123 Main Street",
  phone: "123-456-7890"
)

# Define some drag queen names
queen_names = [
  "Ava Extravaganza", "Bella Blitz", "Cara Charisma", "Diva Deluxe",
  "Ella Elegance", "Fiona Fierce", "Gia Glamour", "Hannah Highness",
  "Ivy Icon", "Jade Jewel", "Kara Kouture", "Luna Luxe",
  "Mia Majesty", "Nina Nirvana", "Ophelia Opulence"
]

# Create drag queens
queen_names.each do |name|
  Queen.create!(
    name: name,
    location: "City Club",
    price: rand(100..500),
    skills: ["singing", "dancing", "lipsync", "comedy", "looks"].sample,
    user: user
  )
end

puts "Created #{Queen.count} drag queens."
