class MoviesOpenings::Movies
  attr_accessor :name, :budget, :url 
  
  def self.today
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    
    movies << self.scrape_boxofficemojo
    
    movies
  end
  
  def self.scrape_boxofficemojo
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/release/rl1182631425/?ref_=bo_hm_rd"))
    name = doc.search("h1.a-size-extra-large").text
    binding.pry 
  end
end