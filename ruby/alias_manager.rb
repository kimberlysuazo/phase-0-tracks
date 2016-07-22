#PSEUDOCODE
=begin
#METHOD
- Create a method that takes in a full name. 
  -It splits that name into array of two, 
  -It cycles through each index of that array. For which: 
    -It splits into an array of letters
    -It cycles through each letter.
      -If the letter is a vowel, it replaces with the next vowel. 
      -If not, it replaces with the next consonant. 
    -It then joins those letters into a word and capitalizes it. 
  -It then pushes that new word into first position of new_first array. Essentially, switching order of words given. 
  -Finally, it then makes that new_first array into a string. Creating a string with the new alias. 
-end method
#DRIVER CODE
-Make empty hash to store future names and corresponding aliases. 
-begin loop that goes on until user types "quit".
  -In loop, ask the user to type in a name. 
    -call method in new_full_name variable.  
    -Push new_full_name to names_and_aliases hash. 
    -Print the new alias. 
    -Create variable that stores the name originally entered capitalized so that it prints nicely later on.  
  -end loop
-print the names_and_aliases hash contents in list.      
=end 

def alias_maker(full_name)
  vowels= ["a", "e", "i", "o", "u", "a"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "b"]  

  full= full_name.split(" ")
  new_first= []

  full.each_index do |g|
    y=  full[g].chars.map!{|letter| if vowels.find_index(letter) then letter = vowels[vowels.find_index(letter) + 1] 
    else letter = consonants[consonants.find_index(letter) + 1] end}.join("").capitalize
      
    new_first.unshift(y)
    end   
  new_first.join(" ")  
end 


#DRIVER CODE
names_and_aliases = {}
loop do 
  puts "Please enter the full name (First and Last) to change into an alias. If done type \"quit\"."
  full_name = gets.chomp.downcase 
  break if full_name == "quit" 

  new_full_name= alias_maker(full_name)
  puts "Your new spy alias is: #{new_full_name}"
  #Create original_capitalized variable so that the name entered prints nicely at the end. 
  original_capitalized= full_name.split.map(&:capitalize).join(' ')
  names_and_aliases[original_capitalized] = new_full_name
end 

names_and_aliases.each {|x,y| puts "#{x} is also known as: #{y}."}

