class MoviesOpenings::CLI 
  
  def call
    list_movies
    menu
    goodnight
  end
  
  def list_movies
    puts "Today's Movie Openings:"
    # here doc - https://en.wikipedia.org/wiki/List_of_highest-grossing_openings_for_films
    @movies = MoviesOpenings::Movies.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - #{movie.year} - #{movie.playing}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter number 1 or 2 to see more information about the movie you're interested in. Type list to see the movies again, otherwise type exit."
      input = gets.strip.downcase
      
      if input.to_i > 0
        movie = @movies[input.to_i-1]
        puts "#{i}. #{movie.name} - #{movie.year} - #{movie.playing}"
      elsif input == "list"
        list_movies
      else
        puts "This option isn't available, please try again."
      end
    end
  end
end
