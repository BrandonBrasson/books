require 'nokogiri'
 class SUPERHUMAN::IMDB
attr_accessor :name, :movie, :url

def self.hero
  #scrape imdb and wikipedia then return user to based on the data.
  self.scrape_imdb
end

def self.scrape_imdb
  imdb = []

imdb << self .scrape_wikipedia

# go to imdb find superman 1978 film
# extract the data
# instantiate

 imdb
end

def self.scrape_imdb
  doc = nokogiri::HTML(open('https://www.imdb.com/title/tt0078346/' ))
binding.pry
end


    def url(*path)
      path.shift if path.first'scores'
    ('https://en.wikipedia.org/wiki/Superman_(1978_film)')
    end


  end
end
