# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all 
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!
rails generate model Studio 
rails generate model Movie 
rails generate model Actor 
rails generate model Role 

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

Batman Begins = Movie.new 
Batman Begins ["title"] = "Batman Begins"
Batman Begins ["year_released"] = "2005"
Batman Begins ["rated"] = "PG-13"
Batman Begins ["studio_id"] = "Warner Bros."

Batman Begins.save 

The Dark Knight = Movie.new 
The Dark Knight ["title"] = "The Dark Knight"
The Dark Knight ["year_released"] = "2008"
The Dark Knight ["rated"] = "PG-13"
The Dark Knight ["studio_id"] = "Warner Bros."

The Dark Knight.save

The Dark Knight Rises = Movie.new
The Dark Knight Rises ["title"] = "The Dark Knight Rises"
The Dark Knight Rises ["year_released"] = "2012"
The Dark Knight Rises ["rated"] = "PG-13"
The Dark Knight Rises ["studio_id"] = "Warner Bros."

The Dark Knight Rises.save

Christian Bale = Role.new 
Christian Bale ["movie_id"] = "Batman Begins"
Christian Bale ["actor_id"] = "Christian Bale"
Christian Bale ["character_name"] = "Bruce Wayne"

Christian Bale.save 

Michael Cane = Role.new
Michael Cane ["movie_id"] = "Batman Begins"
Michael Cane ["actor_id"] = "Michael Cane"
Michael Cane ["character_name"] = "Alfred"

Michael Cane.save

Liam Neeson = Role.new 
Liam Neeson ["movie_id"] = "Batman Begins"
Liam Neeson ["actor_id"] = Liam Neeson 
Liam Neeson ["character_name"] = "Ra's Al Ghul"

Liam Neeson.save 

Katie Holmes = Role.new
Katie Holmes ["movie_id"] = "Batman Begins"
Katie Holmes ["actor_id"] = "Katie Holmes"
Katie Holmes ["character_name"] = "Rachel Dawes"

Katie Holmes.save 

Gary Oldman = Role.new
Gary Oldman ["movie_id"] = "Batman Begins"
Gary Oldman ["actor_id"] = "Gary Oldman"
Gary Oldman ["character_name"] = "Commisioner Gordon"

Gary Oldman.save 

Christian Bale = Role.new
Christian Bale ["movie_id"] = "The Dark Knight"
Christian Bale ["actor_id"] = "Christian Bale"
Christian Bale ["character_name"] = "Bruce Wayne"

Christian Bale.save 

Heath Ledger = Role.new
Heath Ledger ["movie_id"] = "The Dark Knight"
Heath Ledger ["actor_id"] = "Heath Ledger"
Heath Ledger ["character_name"] = "Joker"

Heath Ledger.save 

Aaron Eckhart = Role.new
Aaron Eckhart ["movie_id"] = "The Dark Knight"
Aaron Eckhart ["actor_id"] = "Aaron Eckhart"
Aaron Eckhart ["character_name"] = "Harvey Dent"

Aaron Eckhart.save 

Michael Cane = Role.new
Michael Cane ["movie_id"] = "The Dark Knight"
Michael Cane ["actor_id"] = "Michael Cane"
Michael Cane ["character_name"] = "Alfred"

Michael Cane.save

Maggie Gyllenhaal = Role.new
Maggie Gyllenhaal ["movie_id"] = "The Dark Knight"
Maggie Gyllenhaal["actor_id"] = "Maggie Gyllenhaal"
Maggie Gyllenhaal ["character_name"] = "Rachel Dawes"

Maggie Gyllenhaal.save

Christian Bale = Role.new
Christian Bale ["movie_id"] = "The Dark Knight Rises"
Christian Bale ["actor_id"] = "Christian Bale"
Christian Bale ["character_name"] = "Bruce Wayne"

Christian Bale.save 

Gary Oldman = Role.new
Gary Oldman ["movie_id"] = "The Dark Knight Rises"
Gary Oldman ["actor_id"] = "Gary Oldman"
Gary Oldman ["character_name"] = "Commisioner Gordon"

Gary Oldman.save 

Tom Hardy = Role.new
Tom Hardy ["movie_id"] = "The Dark Knight Rises"
Tom Hardy ["actor_id"] = "Tom Hardy"
Tom Hardy ["character_name"] = "Bane"

Tom Hardy.save 

Joseph Gordon-Levitt = Role.new
Joseph Gordon-Levitt ["movie_id"] = "The Dark Knight Rises"
Joseph Gordon-Levitt ["actor_id"] = "Joseph Gordon-Levitt"
Joseph Gordon-Levitt ["character_name"] = "John Blake"

Joseph Gordon-Levitt.save 

Anne Hathaway = Role.new
Anne Hathaway ["movie_id"] = "The Dark Knight Rises"
Anne Hathaway ["actor_id"] = "Anne Hathaway"
Anne Hathaway ["character_name"] = "Selina Kyle"

Anne Hathaway.save 

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
#TODO! 

movies=Movie.find_by({"rated" => "PG-13"})
for movie in movies 
    puts "#{movie["title"]} #{movie["year_released"]} #{movie["rated"]} #{movie["studio_id"]}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
