class IMDB::CLI

  def call

  end

 def list_xrp
  puts "welcome user:"
  puts <<-doc.gsub/^\s*/,''
   1.ripple The world’s only enterprise blockchain solution for global payments!
 DOC
end

def menu
  puts "enter the number of the if you want to know more about ripple or type exit to leave site"
   input =nil
  while input = != "exit"
    gets.strip.downcase
    case input
  when "1"
    puts "more info on ripple 1..."
  end
 end
end


def goodbye
  puts  "see you later"
end

def why
  puts "why should you buy ripple its in your best interest to buy xrp "
end

 def xrp
   puts "Better Than Any Blockchain"
 end

def fast
  puts "Instant, on-demand settlement"


 end
