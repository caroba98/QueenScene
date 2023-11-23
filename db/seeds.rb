Booking.destroy_all
User.destroy_all
Queen.destroy_all

user = User.create!(
  name: "Event Organizer",
  email: "organizer@example.com",
  password: "password",
  address: "123 Main St",
  phone: "123-456-7890"
)
puts "User created"

drag_queen_names = [
  "Glitter Bombshell", "Cherry Poppins", "Anita Cocktail", "Polly Vinyl", "Eileen Dover",
  "Ivana Twirl", "Minnie Skirt", "Tina Colada", "Lotta Glitz", "Fonda Dix",
  "Robin Banks", "Tara Miso", "Shanda Leer", "Cara Mel", "Juana Tease",
  "Holly Daze", "Lacy Ruffles", "Ginger Snaps", "Bella Trix", "Kitty Litter",
  "Lola Cabana", "Mona Lott", "Sara Tonin", "Coco Nutz", "Dixie Normous",
  "Penny Tration", "Anya Knees", "Gilda Lily", "Frida Slaves", "Sunny Hole", "Tessa Testicles"
]

city_names = [
  "New York", "London", "Paris", "Tokyo", "Dubai",
  "Singapore", "Barcelona", "Los Angeles", "Sydney", "Rome",
  "Berlin", "Amsterdam", "Hong Kong", "San Francisco", "Toronto",
  "Istanbul", "Shanghai", "Rio de Janeiro", "Cape Town", "Bangkok", "Munich"
]

bios = [
  "Just a small-town girl making a big splash with glitter and sass!",
  "Spreading love, laughter, and a little bit of shade one wink at a time.",
  "The diva who serves comedy with a side of fabulousness.",
  "Queen of the night, enchantress of the stage, and tripper over flat surfaces.",
  "A walking disco ball, here to light up your life and your party.",
  "Delivering high notes, higher heels, and the highest hair in town.",
  "Sassy, classy, and a bit smart-assy.",
  "Your local glamour guru, spreading fabulous vibes everywhere.",
  "A hurricane of sequins and feathers - approach with caution!",
  "Delivering dramatic entrances and exits since birth.",
  "Equal parts sugar, spice, and everything nice... with a twist of lemon.",
  "Serving looks, serving laughs, serving coffee on Tuesdays.",
  "The reason the word 'extra' was added to the dictionary.",
  "More twists than a pretzel, more turns than a telenovela.",
  "The human embodiment of a fireworks display.",
  "Here to steal your heart and your snacks.",
  "A rare combination of Cinderella and Sleeping Beauty, but awake and broke.",
  "Bringing the three Cs: Charisma, Couture, and Comedy.",
  "The only queen with her own personal glitter cloud.",
  "Fabulously late to every party, but worth the wait.",
  "Queen of accidentally creating viral memes.",
  "Just like a fine wine - bold, sassy, and gets better with age.",
  "Living proof that you can climb the ladder in six-inch heels.",
  "The only thing higher than my heels is my standard for brunch.",
  "A cocktail of fun and flair with an umbrella on top.",
  "A diva on stage, but at home, it's sweatpants and reality TV.",
  "Turning the world into a runway, one strut at a time.",
  "Dancing through life with all the grace of a gazelle... on roller skates.",
  "I put the 'pow' in powerful performances and the 'oops' in choreography.",
  "Sparkling brighter than my future, one sequin at a time."
]

drag_queen_names.each_with_index do |name, index|
  Queen.create!(
    name: name,
    location: city_names[index % city_names.length],
    price: rand(50..1000),
    bio: bios[index % bios.length],
    skills: Queen::SKILLSET.sample,
    user_id: user.id
  )
  puts "#{Queen.last.name} created"
end

puts "Created #{Queen.count} drag queens."
