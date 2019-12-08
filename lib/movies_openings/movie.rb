class MoviesOpenings::Movies 
  attr_accessor :name, :year, :playing, :url 
  
  def self.today
    
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    
    movies << self.scrape_rottentomatoes
    
    movies
  end
  
  def self.scrape_rottentomatoes
    doc = Nokogiri::HTML(open("https://rottentomatoes.com"))
    binding.pry 
  end
end