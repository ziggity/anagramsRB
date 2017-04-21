require('rspec')
require('./lib/anagram.rb')

describe('String#anagram') do
  it('returns anagrams') do
    expect(('tacocat').anagram()).to(eq('tacocat'))
  end
