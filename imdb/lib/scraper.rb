require 'nokogiri'
class Superman::Book

  attr_accessor :name, :book, :url

  @@all = [] # This will keep all Movie instances

  # 1. When instances are instantiated, add them to the @@all array/collection (@@all << self)
  # 2. Create a class reader (e.g. self.all) to allow reading the value of @@all from outside the Movie class

  
   #def self.superhero
   #scrape imdb and wikipedia then return user to based on the data.
 #  self.scrape_imdb
 #  binding.pry
 # end



def self.all
  #binding.pry
    # movie = []


    # movie << self.scrape_imdb
    @@all ||= self.scrape_book
    binding.pry

    # movie
  end

  def self.scrape_book
    doc = Nokogiri::HTML(open('https://www.imdb.com/title/tt0078346/fullcredits?ref_=tt_cl_sm#cast'))
    list_doc = doc.css("table.cast_list").css('tr') #get a that will give you the data in the form of Nokogiri objects
    list_doc.collect.with_index(1) do |element, i|
        binding.pry
        book = self.new
        book.name = list_doc.css("a")[i].text
      #movie.plot = doc.seach "<tbody><tr><td colspan="4" class="castlist_label"></td></tr>"
      #movie.url = "https://www.imdb.com/title/tt0078346/"
        book.superhero = true
          book
       end
     end

  #def self.scrape_imdb
  #  doc = Nokogiri::HTML(open("https://www.imdb.com/find?q=superman&s=tt&exact=true&ref_=fn_al_tt_ex"))
  #  list_doc = doc.css("div.findSection")
  #  list_doc.each.with_index do |element, i|
  #    movie = self.new
  #    movie.name = list_doc.css(".result_text a")[i].text
    #binding.pry
      #movie.plot = doc.<span class="mw-headline" id="Plot">Plot</span>
      #movie.url = "https://www.imdb.com/title/tt0078346/fullcredits?ref_=tt_cl_sm#cast"
#      movie.superhero = true

#      movie
#    end
#  end

  #Superman::Movie.scrape_imdb
end
