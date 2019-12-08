class MoviesOpenings::CLI 
  
  def call
    list_movies
    movie_menu
    goodnight
  end
  
  def list_movies
    puts "Today's Movie Openings:"
    puts <<-DOC
      1. PLAYMOBIL (2019) - NOW PLAYING
      2. THE ISLANDS (2019) - NOW PLAYING
    DOC
  end
  
  def movie_menu
    
    input = nil
    while input != "exit"
    puts "Please enter the name of the movie you want more information, to return to the menu type return or simlpy press 'exit'."
      input = gets.strip.downcase
      case input 
      when "1"
        puts "More info for PLAYMOBIL"
      when "2"
        puts "More info for THE ISLANDS"
      when "return"
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