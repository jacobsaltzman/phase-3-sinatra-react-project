puts "🌱 Seeding movies..."


movie_data = [
  {
    title: "Us",
    director: "Jordan Peele",
    subgenre: "Mystery/Thriller",
    year: 2019,
    image: "https://upload.wikimedia.org/wikipedia/en/0/00/Us_%282019%29_theatrical_poster.png"
  },
  {
    title: "Get Out",
    director: "Jordan Peele",
    subgenre: "Mystery/Thriller",
    year: 2017,
    image: "https://upload.wikimedia.org/wikipedia/en/a/a3/Get_Out_poster.png"
  },
  {
    title: "Psycho",
    director: "Alfred Hitchcock",
    subgenre: "Mystery/Thriller",
    year: 1960,
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Psycho_%281960%29_theatrical_poster_%28retouched%29.jpg/220px-Psycho_%281960%29_theatrical_poster_%28retouched%29.jpg"

  },
  {
    title: "The Cabinet of Dr. Caligari",
    director: "Robert Wiene",
    subgenre: "Mystery/Thriller",
    year: 1919,
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/2/2f/The_Cabinet_of_Dr._Caligari_poster.jpg/220px-The_Cabinet_of_Dr._Caligari_poster.jpg"
  },
  {
    title: "Alien",
    director: "Ridley Scott",
    subgenre: "SciFi",
    year: 1979,
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Alien_movie_poster.jpg/220px-Alien_movie_poster.jpg"
  },
  {
    title: "King Kong",
    director: "Merian C. Cooper",
    subgenre: "Monster",
    year: 1933,
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/King_Kong_1933_Promotional_Image.png/280px-King_Kong_1933_Promotional_Image.png"
  },
  {
    title: "Dawn of the Dead",
    director: "Zack Snyder",
    subgenre: "SciFi",
    year: "2004",
    image: "https://upload.wikimedia.org/wikipedia/en/1/16/Dawn_of_the_Dead_2004_movie.jpg"
  },
  {
    title: "The Omen",
    director: "Richard Donner",
    subgenre: "Paranormal",
    year: "1976",
    image: "https://upload.wikimedia.org/wikipedia/en/1/1d/Omen_ver4.jpg"
  },
  {
    title: "The Grudge",
    director: "Takashi Shimizu",
    subgenre: "Paranormal",
    year: "2004",
    image: "https://upload.wikimedia.org/wikipedia/en/9/91/The_Grudge_movie.jpg"
  },
  {
    title: "The Frighteners",
    director: "Peter Jackson",
    subgenre: "Comedy",
    year: "1996",
    image: "https://upload.wikimedia.org/wikipedia/en/6/63/Frighteners_ver1.jpg"
  },
  {
    title: "The Blair Witch Project",
    director: "Daniel Myrick",
    subgenre: "FF",
    year: "1999",
    image: "https://upload.wikimedia.org/wikipedia/en/2/26/Blair_Witch_Project.jpg"
  },
  {
    title: "Hellraiser",
    director: "Clive Barker",
    subgenre: "Gore",
    year: "1987",
    image: "https://upload.wikimedia.org/wikipedia/en/4/40/Hellraiser-UK-Quad-poster.JPG"
  },
  {
    title: "Nope",
    director: "Jordan Peele",
    subgenre: "SciFi",
    year: "2022",
    image: "https://upload.wikimedia.org/wikipedia/en/e/e6/Nope_%28film%29_poster.jpg"
  },
  {
    title: "Midsommar",
    director: "Ari Aster",
    subgenre: "Psychological",
    year: "2019",
    image: "https://upload.wikimedia.org/wikipedia/en/4/47/Midsommar_%282019_film_poster%29.png"
  },
  {
    title: "Friday the 13th",
    director: "Sean Cunningham",
    subgenre: "Slasher",
    year: "1980",
    image: "https://upload.wikimedia.org/wikipedia/en/2/2c/Friday_the_13th_%281980%29_theatrical_poster.jpg"
  },
  {
    title: "Godzilla",
    director: "Ishiro Honda",
    subgenre: "Monster",
    year: "1954",
    image: "https://upload.wikimedia.org/wikipedia/commons/9/95/Gojira_1954_Japanese_poster.jpg"
  },
  {
    title: "Shaun of the Dead",
    director: "Edgar Wright",
    subgenre: "Comedy",
    year: "2004",
    image: "https://upload.wikimedia.org/wikipedia/en/8/8d/Shaun_of_the_Dead_film_poster.jpg"
  }
]

movie_data.each do |attr|
   Movie.create(attr)
end


puts "✅ Done seeding!"
puts "#{Movie.count} movies created!"
