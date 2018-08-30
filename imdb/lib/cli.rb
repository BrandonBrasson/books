class Superman::CLI


   def call
    list_books
    menu
    goodbye
  end

      def list_books
    # here doc - "https://www.imdb.com/title/tt0078346/plotsummary?ref_=tt_stry_pl"

        puts "superman comes to save us all"
        @movie = Superman::Book.all
        @movie.each.with_index(1) do |travel , i|
        puts "#{i}. #{travel.name} - #{travel.plot} - #{travel.url}"
    end
  end



      def menu
        binding.pry
        input = nil
        while input != "exit"
          puts "Superman is a 1978 superhero film directed by Richard Donner and based on the DC Comics:"
          input = gets.strip.downcase

      if input.to_i > 0
        the_movie = @movie[input.to_i-1]
        puts "#{the_travel.name} - #{the_travel.plot} - #{the_travel.url}"
      elsif input == "list"
        list_books
      else
        puts "Not sure what you want, type list or exit."
      end
    end
end

  def goodbye
    puts "goodbye have a superday"
  end
end
