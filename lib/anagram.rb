class String
	define_method(:anagram) do |words|
		user_input = self.split("").sort()
		user_anagram = words.split("").sort()
		user_anagram = user_anagram.map(&:downcase)
		user_input = user_input.map(&:downcase)
		anagram_array = []
		if user_input.==(user_anagram)
			anagram_array.push(words, true)
		else
			anagram_array.push(words, false)
		end
	end
end


#Zach, don't forget to include the array of anagrams->:0
# if list_of_anagrams.include? user_input
#   puts "Oh goody! that's a 100% genuine anagram you got there!"
# else
#   puts "Better luck next time pal, this one is not an anagram, it's more like an antigram!"
# end
