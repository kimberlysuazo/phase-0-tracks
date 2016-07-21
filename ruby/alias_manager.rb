#PSEUDOCODE
=begin
- Create a method that cycles through the letters of the word 
and substitutes vowels to the next vowel and consonants to the next consonant. 
    
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
    
  name.chars.select {|v| v =~ /[a-z]/}.join("").gsub(/[a-z]/, 
    "a"=>"e", 'b'=>"c", "c"=>"d", "d"=>"f", "e"=>"i", "f"=>"g", "g"=>"h", "h"=>"j", 'i'=>'o', 'j'=>'k', 
    'k'=>'l', 'l'=>'m', 'm'=>'n', 'n'=>'p', 'o' =>'u', 'p'=>'q', 'q'=>'r', 'r'=>'s', 's'=>'t', 't'=>'v', 
    'u' =>'a', 'v'=>'w', 'w'=>'x', 'x'=>'y', 'y'=>'z', 'z'=>'a').capitalize

 
#new_name
end 

#DRIVER CODE

names_and_aliases = {}
loop do 
  puts "Please enter the full name (First and Last) to change into an alias. If done type \"quit\"."
  full_name = gets.chomp 
  
  break if full_name == "quit" 

  full = full_name.split(" ")
  original_first_name = full[0]
  original_last_name = full[1]

  new_full_name = alias_maker(original_last_name) + " " + alias_maker(original_first_name)
  puts "Your new spy alias is: #{new_full_name}"
  #Create original_capitalized variable so that the name entered prints nicely at then end. 
  original_capitalized= original_first_name.capitalize + " " + original_last_name.capitalize
  names_and_aliases[original_capitalized] = new_full_name
end 

names_and_aliases.each {|x,y| puts "#{x} is also known as: #{y}."}

