#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/ruby-week1')

puts ("welcome to our program")

resume = true
while(resume)
  puts("Anagram finder")
  puts("Please enter two words to see if they are an anagram")
  input = gets.chomp.to_s
  puts (anagram.anagram_finder(input))
  puts("\n \n Would you like to run another program? Y/N ")
  doResume = gets.chomp
  if doResume == "Y" || doResume == "y"
    resume = true
  else
    resume = false
  end
  puts("Ending Program")
  puts("Good bye.")
end
