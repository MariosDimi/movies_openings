class MoviesOpenings::Movies
  attr_accessor :name, :plot
  
  def self.today
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    
    movies << self.scrape_boxofficemojo
    
    movies
  end
  
 #def self.scrape_boxofficemojo
    #doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/release/rl1182631425/?ref_=bo_hm_rd"))

   # movie = self.new
   # movie.name = doc.search("h1.a-size-extra-large").text.strip
   # movie.plot = doc.search("p.a-size-medium").text.strip
    
   # movie
 # end
  
  def self.scrape_boxofficemojo
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/title/tt2527338/?ref_=bo_se_r_2"))
    name = doc.search("h1.a-size-extra-large").text
    
    binding.pry
    
  end
end