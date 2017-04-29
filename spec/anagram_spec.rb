require('rspec')
require('./lib/anagram.rb')

describe('String#anagram') do
	it('This will return true for the two word anagram "Ze" of the single letter word "This is an anagram","This is a Palindrome"') do
		expect('Ze'.anagram('Ze')).to(eq(["This is an anagram"]))
	end
  it('This returns true for a one word anagram "lasvegas" of the word "salvages"') do
		expect('salvages'.anagram('lasvegas')).to(eq(["This is an anagram"]))
	end
  it('This returns false for a one word anagram "tacocat" of the word "robot"') do
		expect('robot'.anagram('tacocat')).to(eq(["these words are not anagrams"]))
	end
  it('This returns true for a uppercase word "TACOCAT" can be anagram of word "TacoCat"') do
    expect('tacocat'.anagram('tacocat')).to(eq(["This is an anagram", "This is a palindrome"]))
  end
  it('This returns false for a white space at end of word "tacocat" can be anagram of word "tacocat "') do
    expect('tacocat '.anagram('tacocat')).to(eq(["This is an anagram", "This is a palindrome"]))
  end

  it('If neither of the inputs contains vowels, This returns:  "not a real word, try again"') do
    expect(('zrts').anagram('zrts')).to(eq(["Not a real word, try again"]))
  end
	it('This returns "these words are not anagrams" if first word is a palindrome') do
	expect('PotOP'.anagram('toopp')).to(eq(["This is an anagram", "This is a palindrome"]))
  end
	it('This returns "these are antigrams!, and they are not anagrams" if words are antigrams') do
    expect('it'.anagram('cya')).to(eq(["these words are not anagrams", "these are antigrams!"]))
	end
end
