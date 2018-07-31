require 'nokogiri'
 class superman::movie
attr_accessor :name, :movie, :url, :superhero

def self.hero
  #scrape imdb and wikipedia then return user to based on the data.
  self.scrape_movie
end

def self.scrape_imdb
  movie = []

movie << self .scrape_wikipedia

# go to imdb find superman 1978 film
# extract the data
# instantiate

 movie
end

def self.scrape_imdb
  doc = nokogiri::HTML(open('https://www.imdb.com/title/tt0078346/' ))
binding.pry
end


    movie << self.scrape_imdb
    movie << self.scrape_wikipedia

   movie
  end

  def self.scrape_imdb
    doc = Nokogiri::HTML(open('https://www.imdb.com/title/tt0078346/'))

    movie = self.new
    movie.name = doc.<i>Superman</i>
    movie.url = "https://www.imdb.com"
    movie.superhero = true

    movie
  end

  def self.scrape_wikipedia
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Superman_(1978_film)"))

    movie = self.new
    movie.name = doc.<a href="/year/1978/?ref_=tt_ov_inf">1978</a>
    movie.plot = doc.<span class="mw-headline" id="Plot">Plot</span>
    movie.url = "https://www.imdb.com"
    movie.superhero = true

    movie
  end
end
