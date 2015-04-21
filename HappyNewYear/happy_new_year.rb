# #happynewyears2.rb

# ##ORIGINAL SUBMITTED##
# seconds_remaining = (0..10).to_a.reverse
# puts "How many times would you like to say 'Happy New Years!'?"

# while input = gets.chomp 
#   if input =~/\D/
#     puts "Please input only a single number.\nHow many times would you like to say 'Happy New Years!'?"
#   else break
#   return input
#   end
# end

# $num_of_cycles = input.to_i

# def happy_new_year (time)
#   time.cycle($num_of_cycles) do |x| 
#     if x == 0 
#       puts "0!  Happy New Year!"; sleep(1) 
#     else puts x; sleep(1)
#     end
#   end
# end

# happy_new_year(seconds_remaining)



###############################################




# ##ORIGINAL SUBMISSION FEEDBACK##
# Say no to $!

# Again, otherwise a correct answer so now we’re moving back towards best practices. Admittedly, it can be hard to see why these best practices are important now, but as the codebase grows larger they become key to maintainability.

# Put each individual action on a separate line of code rather than separating them with a semicolon. This makes it easier to spot in case you need to change it later. Similarly, don’t include anything on lines with an else, again for readability.

# Back to the global variables, this is something that you could solve by turning your input gathering process into a method called 
# something like get_cycles. You could then do time.cycle(get_cycles) do |x| in your happy_new_year method.
# Flag desktop 1920x1080
# Leave a Comment
# View Markdown Syntax 


def get_cycles ()
	puts "How many times would you like to say 'Happy New Year!'?"
	while input = gets.chomp 
	  if input =~/\D/
	    puts "Please input only a single number.\nHow many times would you like to say 'Happy New Years!'?"
	  else 
	  	return input.to_i
	  	break
	  end
	end
end


def happy_new_year (time)
  time.cycle(get_cycles) do |x| 
    if x == 0 
      puts "0!  Happy New Year!"
      sleep(1) 
    else 
    	puts x 
    	sleep(1)
    end
  end
end


seconds_remaining = (0..10).to_a.reverse
happy_new_year(seconds_remaining)
