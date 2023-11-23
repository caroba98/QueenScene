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
  "Cara Mystique","Elena Glitter","Bella Smooch","Samantha Marvel","Cherry Millar","Aly Sassy","Aria Shine","Honey Starling", "Glitter Bombshell", "Cherry Poppins", "Anita Cocktail", "Polly Vinyl", "Eileen Dover",
  "Ivana Twirl", "Minnie Skirt", "Tina Colada", "Lotta Glitz", "Fonda Dix",
  "Robin Banks", "Tara Miso", "Shanda Leer", "Cara Mel", "Juana Tease",
  "Holly Daze", "Lacy Ruffles", "Ginger Snaps", "Bella Trix", "Kitty Litter",
  "Lola Cabana", "Mona Lott", "Sara Tonin", "Coco Nutz", "Dixie Normous",
  "Penny Tration", "Anya Knees", "Gilda Lily", "Frida Slaves", "Sunny Hole", "Tessa Testicles",   "Misty Mirage", "Anita Stage", "Lulu Lashes", "Gigi Glitter", "Candy Sparkles",
  "Fifi Fandango", "Trixie Twinkle", "Dolly Drama", "Velvet Vixen", "Roxy Razzle",
  "Nina Nightshade", "Missy Mischief", "Bambi Burlesque", "Zara Zest", "Tessa Tassel",
  "Lola Lace", "Venus Vamp", "Patsy Pop", "Wanda Whirl", "Cleo Couture",
  "Electra Elegance", "Greta Glam", "Sunny Sequins", "Kiki Kaboom", "Delilah Dazzle",
  "Bessie Bling", "Jazzy Jewel", "Stella Starlight", "Lacey Luminous", "Mona Magic",
  "Trudy Twirl", "Cherry Charm", "Pixie Plume", "Rita Ravish", "Nicky Nova",
  "Gilda Glitterbomb", "Vivi Verve", "Kara Kiss", "Sasha Sizzle", "Bebe Blush"
]

city_names = [
  "New York", "London", "Paris", "Tokyo", "Budapest",
  "Singapore", "Barcelona", "Los Angeles", "Sydney", "Rome",
  "Berlin", "Amsterdam", "Hong Kong", "San Francisco", "Toronto",
  "Istanbul", "Shanghai", "Rio de Janeiro", "Cape Town", "Bangkok", "Munich"
]

bios = [
  "A queen of enigma, turning heads with her mysterious allure and a wardrobe to die for. Known for her spellbinding performances that leave the crowd enchanted.",
  "She's the firecracker of the drag world, lighting up the stage with her explosive charisma and fiery dance moves that can outshine any firework display.",
  "The ultimate diva of the pout and pose. Her lips are as bold as her fashion sense, and she can sass you with a glance and awe you with a smirk.",
  "A superhero in heels, she saves the world one sequin at a time. Her superpower? Dazzling the audience with her spectacular shows and heart of gold.",
  "A tropical storm of fun and flair, she's known for her unpredictable humor and whirlwind performances that are as refreshing as a cool breeze on a hot summer day.",
  "She's the queen of sass, with a witty comeback always at the ready. Aly turns every catwalk into a comedy show and every show into a fierce fashion statement.",
  "Shining brighter than a disco ball, Adele lights up every room with her sparkling personality and dazzling performances that are a feast for the senses.",
  "She brings the glam of the galaxy to the stage. With her celestial charm and out-of-this-world performances, she's a shooting star in the universe of drag.",
  "Shimmying into your heart with a trail of glitter in her wake.",
  "She's not just a snack, she's a whole vending machine.",
  "Bringing more drama than a soap opera at peak season.",
  "A living, breathing kaleidoscope of charisma and sequins.",
  "Wherever she goes, the spotlight magically follows.",
  "Like a fine champagne - bubbly, bright, and ready to pop.",
  "Queen of sass, ruler of class, and breaker of glass ceilings.",
  "Baking up a storm of glam and glitter - she's got the recipe for fabulousness.",
  "She can turn any frown upside down and inside out.",
  "Your go-to gal for a touch of flair and a lot of care.",
  "When life gives her lemons, she makes the best darn lemonade... in heels.",
  "Bolder than a latte with an extra shot of espresso.",
  "She's not just a queen; she's a whole royal court.",
  "Spicing up life one rhinestone at a time.",
  "Serving up a buffet of beauty, brains, and boas.",
  "Like an unexpected plot twist in your favorite book.",
  "She's the human equivalent of a confetti cannon.",
  "Leaving a little bit of sparkle wherever she goes - literally.",
  "Your daily recommended dose of fabulousness.",
  "A whirlwind of wigs, wit, and wonderful weirdness.",
  "Bringing the flavor, flair, and flamboyance to every show.",
  "She's not overdressed; you're just underdazzled.",
  "Adding a sprinkle of sass to your day, every day.",
  "Where she walks, the runway follows.",
  "Not just the life of the party, but the soul of the soiree.",
  "A colorful cocktail of charisma and craziness.",
  "Turning heads and winning hearts with every twirl.",
  "She's not just in the spotlight; she is the spotlight.",
  "Like a mystery novel: full of twists and fabulous turns.",
  "The belle of the ball, the diva of the dancefloor.",
  "In a world of monotone, she's a symphony of color.",
  "A symphony in high heels, playing the tune of glamour.",
  "She's not causing drama; she's just distributing charisma.",
  "Her favorite exercise is running in heels and chasing dreams.",
  "Serving up a feast of fierceness and fun.",
  "The dictionary definition of 'dazzling diva.'",
  "Like a shooting star, but with more eyeliner.",
  "A fabulous fusion of comedy, couture, and pure charm.",
  "The only thing more infectious than her laugh is her energy.",
  "She's not just a queen; she's an entire deck of fabulous.",
  "A diva with a dose of darling and a dash of daring.",
  "She's beauty, she's grace, she's got lipstick on her face.",
  "Turning every sidewalk into a catwalk.",
  "The only thing bigger than her hair is her personality.",
  "She's a walking, talking rainbow of radiance.",
  "Her middle name is 'Slay,' and she lives up to it every day.",
  "The muse of makeup, the siren of the stage.",
  "A true connoisseur of all things fabulous and fancy.",
  "She's like a glitter bomb - fun, unexpected, and unforgettable.",
  "Her motto: 'Why blend in when you were born to stand out?'",
  "Spreading joy, one high-kick at a time.",
  "She doesn't follow trends; she is the trend.",
  "Like a rare gem, she's one of a kind and twice as bright.",
  "She's not just an icon; she's an entire mood.",
  "Her vibe is part disco ball, part fairy godmother.",
  "Serving high fashion and higher spirits.",
  "Always the diva, never the damsel in distress.",
  "She's the sprinkles on the cupcake of life.",
  "A dash of chaos with a splash of love.",
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
