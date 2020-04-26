class MoviesOpenings::CLI 
  
  def call
    list_movies
    menu
    goodnight
  end
  
  def list_movies
    puts "Today's Movie Openings:"
    @movies = MoviesOpenings::Movies.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - #{movie.plot}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter number 1 or 2 to see more information about the movie you're interested in. Type list to see the movies again, otherwise type exit."
      input = gets.strip.downcase
      
      if input.to_i > 0
        movie = @movies[input.to_i-1]
        puts "#{movie.name}"
      elsif input == "list"
        list_movies
      else
        puts "This option isn't available, please try again."
      end
    end
  end
  
  def goodnight
    puts "See you tomorrow for more movies!"
  end
end