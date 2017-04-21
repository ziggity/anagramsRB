require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('anagram checking process', {:type => :feature}) do
#   it('processes the user entry of text inputs, and checks if they are anagrams') do
#     visit('/')
#     fill_in('anagram', :with => 'tacocat')
#     click_button('Anagramatic go!')
#     expect(page).to have_content('tacocat')
#   end
# end
