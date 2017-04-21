require('rspec')
require('./lib/anagram.rb')

describe('String#anagram') do
	it('This will return true for the anagram "Z" of the single letter word "Z"') do
		expect('Z'.anagram('Z')).to(eq(['Z', true]))
	end
  it('This returns false for the anagram "Z" of the single letter word "Y"') do
  		expect('Y'.anagram('Z')).to(eq(['Z', false]))
  end
  it('This returns true for a one word anagram "lasvegas" of the word "salvages"') do
		expect('salvages'.anagram('lasvegas')).to(eq(['lasvegas', true]))
	end
  it('This returns false for a one word anagram "tacocat" of the word "robot"') do
		expect('robot'.anagram('tacocat')).to(eq(['tacocat', false]))
	end
  it('This returns true for a uppercase word "TACOCAT" can be anagram of word "TacoCat"') do
    expect('tacocat'.anagram('tacocat')).to(eq(['tacocat', true]))
  end
  it('This returns false for a white space at end of word "tacocat" can be anagram of word "tacocat "') do
    expect('tacocat '.anagram('tacocat')).to(eq(['tacocat', false]))
  end
  it('This returns true for a word that is on the anagram master list_of_anagrams "beats" is on the list_of_anagrams') do
    expect('beats'.anagram('beats')).to(eq(['beats', true]))
  end
end
