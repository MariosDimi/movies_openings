class MoviesOpenings::Movies
  attr_accessor :name, :plot
  
  def self.today
    self.scrape_movies
  end
  
  def self.scrape_movies
    movies = []
    
    movies << self.scrape_boxofficemojo
    movies << self.scrape_dc
    
    movies
  end
  
  def self.scrape_boxofficemojo
    doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/release/rl1182631425/?ref_=bo_hm_rd"))

    movie = self.new
    movie.name = doc.search("h1.a-size-extra-large").text
    movie.plot = doc.search("p.a-size-medium").text
    
    movie
  end
  
  def self.scrape_dc
    doc = Nokogiri::HTML(open("https://www.dccomics.com/characters/birds-of-prey"))
    movie = self.new
    movie.name = doc.search("h1.field-content").text
    movie.plot = doc.search("p").text
    
    movie
  end
end

  #def self.scrape_boxofficemojo
  #  doc = Nokogiri::HTML(open("https://www.boxofficemojo.com/title/tt2527338/"))
    
  #  movie = self.new
  #  movie.name = doc.search("h1.a-size-extra-large").text
  #  movie.plot = doc.search("span.a-size-medium").text
    
  #  movie
  #end