class MoviesOpenings::CLI 
  
  def call
    list_movies
    movie_menu
    goodnight
  end
  
  def list_movies
    puts "Today's Movie Openings:"
    puts <<-DOC
      1.PLAYMOBIL (2019)
      2.THE ISLANDS (2019)
    DOC
  end
  
 #   @movies = MoviesOpenings::Movies.today
  #  @movies.each.with_index(1) do |movie, i|
   #   puts "#{i}. #{movie.name} - #{movie.year} - #{movie.playing}"
  #  end
#  end
  
  def movie_menu
    input = nil
    while input != "exit"
    puts "Please enter the name of the movie you want more information, type 'list' to see the movies again or to return to the menu type return or simlpy press 'exit'."
      input = gets.strip.downcase
      case input
      when "1"
        puts "When her younger brother disappears into the colourful and animated world of Playmobil, Marla is forced to abandon her organised and structured life to rescue him. Finding herself on an incredible and unpredictable adventure within this new world, Marla begins to see potential she never dreamed of."
      when "2"
        puts "The film, shot entirely in Hawaii, is based on the incredible true story of Chiefess Kapio-lani who descended into an active volcano to demonstrate her new found faith in Christ and who ushered in a new beginning in Hawaii."
      when "list"
        list_movies
      else
        puts "This option isn't available, please try again."
      end
    end
  end
  
  def goodnight
    puts "See you tomorrow for more movies."
  end
end
      
     # if input.to_i > 0
      #  movie = @movies[input.to_i-1]
      #  puts "#{i}. #{movie.name} - #{movie.year} - #{movie.playing}"
      #  elsif input == "list"
       #   list_movies
      #  else
      #  puts "This option isn't available, please try again."
    #  end
  #  end
#  end
  