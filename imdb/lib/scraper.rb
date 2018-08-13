
class Superman::Movie
attr_accessor :name, :movie, :url, :superhero

def self.super
  #scrape imdb and wikipedia then return user to based on the data.
  self.scrape_movies
end

def self.scrape_movies
  movies = []


    movies << self.scrape_imdb
    movies << self.scrape_wikipedia

 movies
  end


  def self.scrape_imdb
    doc = Nokogiri::HTML(open('https://www.imdb.com/title/tt0078346/fullcredits?ref_=tt_cl_sm#cast'))
    list_doc = doc.css("div.findSection")
    binding.pry
    list_doc.each.with_index do |element, i|
      movie = self.new
      movie.name = list_doc.css(".result_text a")[i].text
    #binding.pry
      #movie.plot = doc.<span class="mw-headline" id="Plot">Plot</span>
      #movie.url = "https://en.wikipedia.org/wiki/Superman_(1978_film)"
      movie.superhero = true


    movie
  end

  def self.scrape_wikipedia
    doc = Nokogiri::HTML(open("https://www.imdb.com/find?q=superman&s=tt&exact=true&ref_=fn_al_tt_ex"))
    list_doc = doc.css("div.findSection")
    binding.pry
    list_doc.each.with_index do |element, i|
      movie = self.new
      movie.name = list_doc.css(".result_text a")[i].text
    #binding.pry
      #movie.plot = doc.<span class="mw-headline" id="Plot">Plot</span>
      #movie.url = "https://en.wikipedia.org/wiki/Superman_(1978_film)"
      movie.superhero = true

      movie
    end
  end

  Superman::Movie.scrape_wikipedia
end
