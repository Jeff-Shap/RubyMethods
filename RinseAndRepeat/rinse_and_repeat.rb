#ruby rinse_and_repeat.rb

puts "What's your name?"

while name = gets.chomp
	if name =~ /\d/
		puts "That's not your name! \nWhat is your real name?"
		else puts "Whats your age?"
			while age = gets.chomp
				if age =~/\D/ || /0/
					puts "That's not a valid age! \nWhat's your real age?"
			    else puts "Your name is #{name} and your age is #{age}"
			    	Kernel.exit!
			 end
		end
	end
end









# if (puts "Whats your name?"
	# 	 (name = gets.chomp
	# 		if name =~ /\d/
	# 		puts "Thats not your name...what's your name?"
	# 	end)
	# 	 )
	# end








# if (puts "what's your name"
# 	name = gets.chomp.split(//)
# 	if (name =~ /\d/
# 		puts "That's not your name!")
# 	end
# 	)
# end

#puts "#{name}"





# print "What's your name? "
# name = gets.split(//)
# print "#{name}"

# if (name.each if name =~ /\d/
# 		print "That's not your name...whats your name?")
# else print "what's your age"
# end
		

# print "#{name}"

# while (name = gets.chomp
# 		if name =~ /\d/
# 		puts "That's not your name, what is your real name?"
# 	end)


# end
# else
# 	puts "What's your name?"
# end


#print "#{name}"


#puts name








#print "What's your age? "
#age = gets.chomp
#print "#{age}"







#puts "Your name is #{name} and you are #{age} years old."
