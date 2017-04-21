class String
	define_method(:anagram) do |words|
		vowels = true
		anagram_array = []
		user_vowel_checker = self
		(user_vowel_checker+" "+words).split(" ").each do |looper|
			if !looper[/[aeiou]/]
				vowels = false
			end
		end
		if vowels == false
			anagram_array.push('not a real word, try again')
			return anagram_array
		end
		user_input = self.gsub(/\s+/, "")
		words_input = words
		words = words.gsub(/\s+/, "")
		user_input = self.split("").sort()
		words_anagram = words.split("").sort()
		words_anagram = words_anagram.map(&:downcase)
		user_input = user_input.map(&:downcase)

		if user_input.==(words_anagram)
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
