# _Anagram and Antigrams_

#### _Independent Project week 1 Ruby_

#### By _**Zach Beecher**_

## Description

_Imagine you're a jr developer, and you are interviewing at a company. This company just tasked you with creating a website to deploy anagram method on user's input from a form, which will then do some logic and tell the user some anagrams you can make with their given input, and their respective antigrams if that's the case_

_For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye"._

## Setup/Installation Requirements

* _Download or clone project files: https://github.com/ziggity/anagramsRB.git It's that easy!_
* _Run bundle command in terminal_
* _type ruby app.rb in terminal_
* _open web browser and go to localhost:4567_
* _enjoy!_

## Specs

* _spec 0: Program will take user's input of 2 separate words or sentences_
* _spec 1: Program will only accept text as input:_
* _Input: Googl3's K3wl!_
* _Output:invalid entry, please enter only text (a..z)!_
* _spec 2: Program will check to see if the inputs are real words:_
* _input: Yurb_
* _output:hey, Yurb isn't a real word so you have to try again!_
* _spec 2.5: program will remove white spaces around the user's inputted words_
* _input:  " hey  "_
* _output: "hey"_
* _spec 3:Program will downcase all letters to make it uniform:_
* _input: TacOCaT_
* _output: tacocat_
* _spec 4: Program will check the words to see if they are anagrams_
* _spec 5: Program will take into account all possibilities of anagrams:_
* _Input: Tea;_
* _Output: Eat;_
* _spec 6: Program will check if the anagram(s) is also a palindrome:_
* _input: Tacocat, Redder_
* _output:These words are paldindromes, too!_
* _spec 7: After Program checks if input is not anagrams, it will check if they are antigrams._
* _input: hi, bye_
* _output: hi has no matches with bye, so they are antigrams_

## Known Bugs

_No known bugs, yet_

## Support and contact details

_no support, this is just a class assignment_

## Technologies Used
* _Bootstrap 3.3.7_
* _JQuery 3.2.0_
* _Sinatra_
* _Ruby Gems - Launchy, rspec, pry, Capybara_
* _Heroku_

### License

*This project is licensed under the MIT license*

Copyright (c) 2017 **_Zach Beecher_**
