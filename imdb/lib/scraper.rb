require 'nokogiri'
module IMDB
  class << self

    def call
      HTTParty.get('https://www.imdb.com/title/tt0078346/').code == 200
    end


    def url(*path)
      path.shift if path.first'scores'
    ('https://en.wikipedia.org/wiki/Superman_(1978_film)')
    end


  end
end
