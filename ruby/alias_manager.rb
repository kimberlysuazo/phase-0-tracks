#PSEUDOCODE
=begin
- Create a method that cycles through the letters of the word entered checking if the letters are vowels or consonants.
    -Create the following variables:
      -vowels (listing vowels)
      -consonants (listing consonants)
      -new first (empty array) 
    -If the letters are vowels, 
        -match that letter to the index of variable listing vowels, and add 1. 
        -store that index number in new variable x 
        -Create new variable z which uses the [x] to call up the letter. 
        -push values into new_first array using the .insert method. 
    - If letter are consonants, do same thing but going through consonants variable and using different variable names. 
    -create new_name which stores the new_first array joined into one string. Capitalize. 
 -end method
 -Make empty hash to store future names and corresponding aliases. 
 -begin loop that goes on until user types "quit".
  -In loop, ask the user to type in a name. 
    -Split up that name into an array of two values. 
      -Make first_name and last_name variables from those two values. 
    -Use last_name and first_name variables to call the alias_makes method. 
    -Store new alieas name in new variable: new_full_name, mixing up the first and last name order.  
    -Push new name to names_and_aliases hash. 
    -Print the new alias. 
  -end loop
  -print the names_and_aliases hash contents      
=end 

#DEFINE METHOD
def alias_maker (name)
    vowels= "aeioua"
    consonants = "bcdfghjklmnpqrstvwxyzb"
    new_first = []
    



  name.each_index do |n|
    if name[n].match(/[aeiou]/
      x = vowels.index(name[n])  + 1
      z = vowels[x]
      new_first.insert(n, z)
    else   
      k = consonants.index(name[n])  + 1
      y = consonants[k]
      new_first.insert(n, y)
    end 
  end
  new_name= new_first.join("").capitalize
end



#DRIVER CODE

names_and_aliases = {}
loop do 
  puts "Please enter the full name (First and Last) to change into an alias. If done type \"quit\"."
  name_entered = gets.chomp 
  #used separate variable for so that when printing the names_and_aliases hash, 
  #the name entered is capitalized (or listed as entered, NOT #downcased).
  full_name= name_entered.downcase
  break if full_name == "quit" 

  full = full_name.split(" ")
  original_first_name = full[0] 
  original_last_name = full[1]

  new_full_name = alias_maker(original_last_name) + " " + alias_maker(original_first_name)
  puts "Your new spy alias is: #{new_full_name}"
  names_and_aliases[name_entered] = new_full_name
end 

names_and_aliases.each {|x,y| puts "#{x} is also known as: #{y}."}

