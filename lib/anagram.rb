class String
	define_method(:anagram) do |words|
		vowels = true
		anagram_array = []
		receiver = self
		(receiver +" "+words).split(" ").each do |letter|
			if !letter[/[aeiouy]/]
				vowels = false
			end
		end
		if vowels == false
			anagram_array.push('Not a real word, try again')
			return anagram_array
		end
		user_input = self.downcase.gsub(/[^a-zA-Z0-9]*/,'')
		words_anagram = words.downcase.gsub(/[^a-zA-Z0-9]*/,'')
		if (user_input.chars.sort<=>words_anagram.chars.sort) == 0
			anagram_array.push("This is an anagram")
			if user_input.reverse == user_input
				anagram_array.push("This is a palindrome")
			 elsif words_anagram.reverse == words_anagram
			 	anagram_array.push("This is a palindrome")
			end
		else
			anagram_array.push('these words are not anagrams')
			antigram = true
			user_input.split("").each() do |letter|
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
