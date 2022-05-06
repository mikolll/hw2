class Movie < ApplicationRecord

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

end
