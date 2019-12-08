class MoviesOpenings::CLI 
  
  def call
    list_movies
    movie_menu
    goodnight
  end
  
  def list_movies
    puts "Today's Movie Openings:"

    @movies = MoviesOpenings::Movie.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - #{movie.year} - #{movie.playing}"
    end
  end
  
  def movie_menu
    input = nil
    while input != "exit"
    puts "Please enter the name of the movie you want more information, type 'list' to see the movies again or to return to the menu type return or simlpy press 'exit'."
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
  
  def goodnight
    puts "Thank you for stopping by, see you tomorrow for more movies."
  end
end