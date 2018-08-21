class Superman::CLI


   def call
    list_movie
    menu
    goodbye
  end

      def list_movie
    # here doc - "https://www.imdb.com/title/tt0078346/plotsummary?ref_=tt_stry_pl"
    puts "superman comes to save us all"
    @movie = Superman::Movie.superhero
    @movie.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.name} - #{movie.plot} - #{movie.url}"
    end
  end

  def list_movie

 end



      def menu
    input = nil
    while input != "exit"
      puts "Superman is a 1978 superhero film directed by Richard Donner and based on the DC Comics:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_movie = @movie[input.to_i-1]
        puts "#{the_movie.name} - #{the_movie.plot} - #{the_movie.url}"
      elsif input == "list"
        list_movie
      else
        puts "Not sure what you want, type list or exit."
      end
    end
end

  def goodbye
    puts "goodbye have a superday"
  end
end
