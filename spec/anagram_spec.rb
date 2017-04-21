require('rspec')
require('./lib/anagram.rb')

describe('String#anagram') do
	it('This will return true for the anagram "Z" of the single letter word "Z"') do
		expect('Z'.anagram('Z')).to(eq(['Z', true]))
	end
  it('returns false for the anagram "Z" of the single letter word "Y"') do
  		expect('Y'.anagram('Z')).to(eq(['Z', false]))
  	end


end
