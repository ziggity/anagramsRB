class String
	define_method(:anagram) do |words|
		vowels = true
		anagram_array = []
		user_vowel_checker = self
		(user_vowel_checker+" "+words).split(" ").each do |looper|
			if !looper[/[aeiouy]/]
				vowels = false
			end
		end
		if vowels == false
			anagram_array.push('not a real word, try again')
			return anagram_array
		end
		user_input = self.gsub(/[^a-z0-9]/,'').split("").sort()
		words_anagram = words.gsub(/[^a-z0-9]/,'').split("").sort()
		words_anagram = words_anagram.map(&:downcase)
		user_input = user_input.map(&:downcase)

		if user_input.==(words_anagram)
			anagram_array.push("This is an anagram")
			if user_input.reverse == user_input
				anagram_array.push("This is a palindrome")
			 elsif words_anagram.reverse == words_anagram
			 	anagram_array.push("This is a palindrome")
			end
		else
			anagram_array.push('these words are not anagrams')
			antigram = true
			user_input.each() do |letter|
				if words_anagram.include?(letter)==true
					antigram = false
				end
			end
			if antigram == true
				anagram_array.push('these are antigrams!')
			end
		end
		anagram_array
	end

end
