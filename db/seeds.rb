puts "💥 Destroying data..."
Gamer.destroy_all
Game.destroy_all
Review.destroy_all

puts "🌱 Seeding data..."

puts "🌱 Seeding gamers..."
# Create Gamers
10.times do
  Gamer.create(
    name: Faker::Name.name,
    age: rand(18..500),
    origin: Faker::Nation.nationality,
    gender: Faker::Gender.short_binary_type.upcase,
    favorite: "blank",
    bio: Faker::Lorem.paragraph(sentence_count: 20),
    image: Faker::Avatar.image
  )
end

puts "🌱 Seeding games..."
# Create games
Game.create(
  title: "God of War",
  genre: "Action-adventure/RPG",
  platform: "PS4/PC",
  image: "https://assets-prd.ignimgs.com/2022/05/16/god-of-war-2018-1652716403586.jpg",
  description: "God of War is an action-adventure game developed by Santa Monica Studio and published by Sony Interactive Entertainment. It was released for the PlayStation 4 in April 2018, with a Windows port in January 2022. The game is the eighth installment in the God of War series, the eighth chronologically, and the sequel to 2010's God of War III. Unlike previous games, which were loosely based on Greek mythology, this installment is loosely inspired by Norse mythology, with the majority of it set in ancient Scandinavia in the realm of Midgard. For the first time in the series, there are two protagonists: Kratos, the former Greek God of War who remains the only playable character, and his young son, Atreus. Following the death of Kratos' second wife Faye—Atreus' mother—the two embark on a journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nature. Along their journey, they come into conflict with monsters and gods of the Norse world.

  Described by creative director Cory Barlog as a reimagining of the franchise, a major gameplay change is that Kratos makes prominent use of a magical battle axe instead of his signature double-chained blades. God of War also uses an over-the-shoulder free camera, with the game in one shot, as opposed to the fixed cinematic camera of the previous entries. The game also includes role-playing video game elements, and Kratos' son Atreus provides assistance in combat. The majority of the original game's development team worked on God of War and designed it to be accessible and grounded. A separate short text-based game, A Call from the Wilds, was released in February 2018 through Facebook Messenger and follows Atreus on his first adventure. Three days before God of War's release, a smartphone companion app called Mímir's Vision was made available, providing additional information about the game's Norse setting.
  
  God of War received universal acclaim for its story, world design, art direction, music, graphics, combat system, and characters, in particular the dynamic between Kratos and Atreus. Many reviewers felt it had successfully revitalized the series without losing the core identity of its predecessors. It has been cited as among the greatest video games ever made, and was awarded Game of the Year by numerous media outlets and award shows. The game also performed well commercially, selling over 5 million units within a month of its release and 23 million units sold by November 2022, making it the best-selling PlayStation 4 game and the best-selling game in the series. A novelization was released in August 2018, followed by a prequel comic series that began publication in November 2018 and concluded in June 2021, while a live action television series is currently in development for Amazon Prime Video. A sequel, God of War Ragnarök, released in November 2022 for the PlayStation 4 and PlayStation 5.",
  year: 2018 ,
  developer: "Santa Monica Studio",
  price: 60
)
Game.create(
  title: "Sekiro: Shadows Die Twice",
  genre: "Action-adventure/RPG",
  platform: "PS4/Xbox/PC",
  image: "https://assets1.ignimgs.com/2018/09/04/sekiro---button-1536103897438.jpg",
  description: "Sekiro: Shadows Die Twice is a 2019 action-adventure game developed by FromSoftware and published by Activision. The game follows a shinobi known as Wolf, who attempts to take revenge on a samurai clan that imprisoned him and kidnapped his lord. The gameplay is focused on stealth, exploration, and combat, with a particular emphasis on boss battles. It takes place in a fictionalized Japan during the Sengoku period and makes strong references to Buddhist mythology and philosophy.

  Sekiro was released for PlayStation 4, Windows, and Xbox One in March 2019, and for Stadia in October 2020. Lead director Hidetaka Miyazaki wanted to create a new intellectual property (IP) that marked a departure from their Dark Souls series, looking at games such as Tenchu for inspiration. Sekiro was praised by critics, who complimented its gameplay and setting, and compared it to Dark Souls, although opinions on its difficulty were mixed. It won several year-end awards and sold over five million copies by July 2020.",
  year: 2019,
  developer: "From Software",
  price: 60
)
Game.create(
  title: "The Legend of Zelda: Breath of the Wild",
  genre: "Action-adventure/RPG",
  platform: "Nintendo Switch",
  image: "https://assets-prd.ignimgs.com/2022/06/14/zelda-breath-of-the-wild-1655249167687.jpg",
  description: "The Legend of Zelda: Breath of the Wild is a 2017 action-adventure game developed and published by Nintendo for the Nintendo Switch and Wii U consoles. The game is an installment of The Legend of Zelda series and is set at the end of its timeline. The player controls an amnesiac Link, who awakens from a hundred-year slumber, and attempts to regain his memories and prevent the destruction of Hyrule by Calamity Ganon.

  Similar to the original 1986 Legend of Zelda, players are given minimal instruction and can explore the open world freely. Tasks include collecting various items and gear to aid in objectives such as puzzle-solving or side quests. The world features minimal structure and is designed to encourage exploration and experimentation, and the main story quest can be completed in a nonlinear fashion.
  
  Development of Breath of the Wild took place over five years, following the responses from some fans who wanted a larger game world to explore. Wanting to rethink the conventions of the series, Nintendo introduced elements such as detailed chemistry and physics engines. Monolith Soft, known for their work on the open world Xenoblade Chronicles series, assisted in designing landscapes and topography. The game was originally planned for release in 2015 as a Wii U exclusive but was delayed twice. Released on March 3, 2017, Breath of the Wild was a launch game for the Nintendo Switch and the final Nintendo-published game for the Wii U. Two waves of downloadable content were released in 2017 via an expansion pass.
  
  Breath of the Wild received universal acclaim, with praise for its open-ended gameplay, open world design, and attention to detail, although it received minor criticism for its technical performance at launch. It won several Game of the Year awards and has since been cited as one of the greatest video games of all time. Breath of the Wild is also the top selling game in the series and one of the best-selling video games of all time, selling more than 27 million copies by 2022. A spin-off, Hyrule Warriors: Age of Calamity, was released in 2020. A sequel, Tears of the Kingdom, is scheduled for 2023.",
  year: 2017,
  developer: "Nintendo",
  price: 60
)
Game.create(
  title: "LIMBO",
  genre: "Puzzle-platform",
  platform: "All Platforms",
  image: "https://assets1.ignimgs.com/2018/06/20/limbo---button-1529529628004.jpg",
  description: "Limbo is a puzzle-platform video game developed by independent studio Playdead and originally published by Microsoft Game Studios for the Xbox 360. The game was released in July 2010 on Xbox Live Arcade, and has since been ported by Playdead to several other systems, including the PlayStation 3, Linux and Microsoft Windows. Limbo is a 2D side-scroller, incorporating a physics system that governs environmental objects and the player character. The player guides an unnamed boy through dangerous environments and traps as he searches for his sister. The developer built the game's puzzles expecting the player to fail before finding the correct solution. Playdead called the style of play 'trial and death', and used gruesome imagery for the boy's deaths to steer the player from unworkable solutions.

  The game is presented in black-and-white tones, using lighting, film grain effects and minimal ambient sounds to create an eerie atmosphere often associated with the horror genre. Journalists praised the dark presentation, describing the work as comparable to film noir and German Expressionism. Based on its aesthetics, reviewers classified Limbo as an example of video games as an art form.
  
  Limbo received critical acclaim, but its minimal story polarised critics; some critics found the open-ended work to have deeper meaning that tied well with the game's mechanics, while others believed the lack of significant plot and abrupt ending detracted from the game. A common point of criticism from reviewers was that the high cost of the game relative to its short length might deter players from purchasing the title, but some reviews proposed that Limbo had an ideal length. The game has been listed among the greatest games of all time.
  
  Limbo was the third-highest selling game on the Xbox Live Arcade service in 2010, generating around $7.5 million in revenue. It won several awards from industry groups after its release, and was named as one of the top games for 2010 by several publications. Playdead's next title, Inside, was released in 2016, and revisited many of the same themes presented in Limbo.",
  year: 2010,
  developer: "Playdead",
  price: 20
)
Game.create(
  title: "Portal",
  genre: "Puzzle-platform",
  platform: "All Platforms",
  image: "https://assets-prd.ignimgs.com/2021/12/20/portal-cover-1640031155845.jpg",
  description: "Portal is a 2007 puzzle-platform game developed and published by Valve. It was released in a bundle, The Orange Box, for Windows, Xbox 360 and PlayStation 3, and has been since ported to other systems, including Mac OS X, Linux, Android (via Nvidia Shield), and Nintendo Switch.

  Portal consists primarily of a series of puzzles that must be solved by teleporting the player's character and simple objects using 'the Aperture Science Handheld Portal Device', often referred to as the 'portal gun', a device that can create inter-spatial portals between two flat planes. The player-character, Chell, is challenged and taunted by an artificial intelligence named GLaDOS (Genetic Lifeform and Disk Operating System) to complete each puzzle in the Aperture Science Enrichment Center using the portal gun with the promise of receiving cake when all the puzzles are completed. The game's unique physics allows kinetic energy to be retained through portals, requiring creative use of portals to maneuver through the test chambers. This gameplay element is based on a similar concept from the game Narbacular Drop; many of the team members from the DigiPen Institute of Technology who worked on Narbacular Drop were hired by Valve for the creation of Portal, making it a spiritual successor to the game.
  
  Portal was acclaimed as one of the most original games of 2007, despite criticisms for its short duration and limited story. It received praise for its originality, unique gameplay and dark story with a humorous series of dialogue. GLaDOS, voiced by Ellen McLain in the English-language version, received acclaim for her unique characterization, and the end credits song 'Still Alive', written by Jonathan Coulton for the game, was praised for its original composition and humorous twist. Portal is often cited as one of the greatest video games ever made. Excluding Steam download sales, over four million copies of the game have been sold since its release, spawning official merchandise from Valve including plush Companion Cubes, as well as fan recreations of the cake and portal gun.
  
  A standalone version with extra puzzles, Portal: Still Alive, was also published by Valve on the Xbox Live Arcade service in October 2008 exclusively for Xbox 360. A sequel, Portal 2, was released in 2011, which expanded on the storyline, adding several gameplay mechanics and a cooperative multiplayer mode.",
  year: 2007,
  developer: "Valve",
  price: 20
)
Game.create(
  title: "Apex Legends",
  genre: "Battle Royale/FPS",
  platform: "All Platforms",
  image: "https://assets1.ignimgs.com/2019/02/04/apex-legends---button-fin-1549319070496.jpg",
  description: "Apex Legends is a free-to-play battle royale-hero shooter game developed by Respawn Entertainment and published by Electronic Arts. It was released for PlayStation 4, Windows, and Xbox One in February 2019, for Nintendo Switch in March 2021, and for PlayStation 5 and Xbox Series X/S in March 2022. A mobile version of the game designed for touchscreens titled Apex Legends Mobile was released in May 2022 on Android and iOS. The game supports cross-platform play, excluding the aforementioned mobile platforms.

  Before the match, players form into two- or three-player squads, and select from pre-designed characters with distinctive abilities, known as 'Legends'. The game has two gameplay modes. In 'Battle Royale', up to 20 three-person squads or 30 two-person duos land on an island and search for weapons and supplies before attempting to defeat all other players in combat. The available play area on the island shrinks over time, forcing players to keep moving or else find themselves outside the play area which can be fatal. The final team alive wins the round. In 'Arenas', players form into three-player squads and fight against another squad in a 3v3 team deathmatch over a series of rounds to determine the winner of the match. Teams win when their team has at least 3 points and is 2 points ahead.
  
  Apex Legends is set in the same science fiction universe as Respawn Entertainment's Titanfall series, with several characters from the Titanfall series appearing either as minor characters or playable Legends. Work on the game began around late 2016, though the project remained a secret right up until its launch. The game's release in 2019 came as a surprise, as until that point it had been assumed that Respawn Entertainment was working on a third installment to the Titanfall franchise, the studio's previous major game. Apex Legends received generally positive reviews from critics, who praised its gameplay, progression system, and fusion of elements from various genres. Some considered it a worthy competitor to other battle royale games. Apex Legends surpassed 25 million players by the end of its first week, and 50 million within its first month. By April 2021, it had approximately 100 million players making it one of the most played video games of all time by player count.",
  year: 2021,
  developer: "Respawn Entertainment",
  price: "Free-to-play"
)

puts "🌱 Seeding reviews..."
# Create Reviews
# create between 3 and 6 reviews for each game
Game.all.each do |game|
  rand(10..15).times do
    gamer = Gamer.order('RANDOM()').first
    
    Review.create(
      title: Faker::Lorem.sentence,
      rating: rand(1..10),
      hours: rand(10..200),
      text: Faker::Lorem.paragraph(sentence_count: 10),
      game_id: game.id,
      gamer_id: gamer.id
    )
  end
end

puts "✅ Done seeding!"