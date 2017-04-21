require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @phrase1 = params.fetch('phrase1')
  @phrase2 = params.fetch('phrase2')
  @results = @phrase1.anagram(@phrase2)
    erb(:anagram)
  end
