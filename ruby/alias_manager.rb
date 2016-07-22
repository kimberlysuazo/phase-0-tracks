#PSEUDOCODE
=begin
- Create a method that takes in a name. 
  -It splits that name into array of two, 
  -It cycles through that array and for each word, substitutes vowels to the next vowel and consonants to the next consonant. 
  -It then pushes that new word into first position of new_name array. Essentially, switching order. 
  -It then makes that array into a string. 
-end method
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

