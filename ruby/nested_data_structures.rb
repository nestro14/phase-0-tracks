  super_hero_movies = {
    "Iron Man" => {year: 2004,
                   main_actor: "Robert Downey Jr.",
                   genre: "action",
                   character_names: ["Tony Stark", "Pepper Potts", "Rhodey", "Agent Coulson", "JARVIS"],
                   rating: 7.9,
                   fav_movie: false
                   },
        "Thor" => {year: 2011,
                   main_actor: "Chris Hemsworth",
                   genre: "action",
                   character_names: ["Thor", "Jane Foster", "Loki", "Agent Coulson", "Odin"],
                   rating: 7.0,
                   fav_movie: false},
"Captain America" => {year: 2011,
                   main_actor: "Chris Evans",
                   genre: "action",
                   character_names: ["Steve Rogers", "James Buchanan", "Nick Fury", "Agent Coulson", "Peggy Carter"],
                   rating: 6.9,
                   fav_movie: false},
  "Spider Man" => {year: 2002,
                   main_actor: "Tobey Maguire",
                   genre: "action",
                   character_names: ["Peter Parker", "Mary Jane Watson", "Harry Osborn", "Green Goblin", "May Parker"],
                   rating: 7.3,
                   fav_movie: false},
    "Deadpool" => {year: 2016,
                   main_actor: "Ryan Reynolds",
                   genre: "action-comedy",
                   character_names: ["Deadpool", "Vanessa Carlysle", "Colossus", "Ajax", "Warlord"],
                   rating: 8.0,
                   fav_movie: true}
  }

#1. Which movie is my favorite?
super_hero_movies.each do |movie, movie_info|
  if movie_info[:fav_movie] == true
    puts "My favorite movie is #{movie}"
  end
end

#2. List all movies in which the character 'Agent Coulson' appears in.
super_hero_movies.each do |movie, movie_info|
  if movie_info[:character_names].include?("Agent Coulson")
    puts "The character 'Agent Coulson' was in the movie #{movie}."
  end
end

# 3. List the oldest movies
movie_years = []
super_hero_movies.each do |movie, movie_info|
  movie_years << [movie, movie_info.fetch(:year)]
end
oldest_movie, newest_movie = movie_years.minmax_by {|movie| movie.last}
puts "The oldest movie in the hash is #{oldest_movie.first}"

#4. List the newest movies
puts "The newest movie in the hash is #{newest_movie.first}"

#5. What is the averge rating of all movies
sum_movie_ratings = super_hero_movies.values.map {|movie_info| movie_info[:rating]}.reduce(:+)
num_of_movies = super_hero_movies.count
average_movie_ratings =  sum_movie_ratings / num_of_movies
puts "The average rating for all the movies in the hash is #{average_movie_ratings}"

# 6. List all action movies
action_movies = super_hero_movies.select {|movie, movie_info| movie_info[:genre] == "action"}
puts "The following movies are action movies: #{action_movies.keys.join(", ")}"

#7. Which character(main_actor & characters) has the longest name(include whitespace chars)
names = []
super_hero_movies.values.select {|movie| names << [movie[:main_actor],movie[:character_names]]}
longest_name = names.flatten.max_by{|name| name.length}
puts "Of all names of main actors and characters in any movie, #{longest_name} has the longest name."