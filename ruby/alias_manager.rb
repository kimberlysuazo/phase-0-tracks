=begin
Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end

#PSEUDOCODE 
=begin
-  

Remember .upcase at the end. right before creating new array. 
  
=end

#Puts "Please type in the full name to change into an alias."
#full_name= gets.chomp

#method(full_name)

full_name = "Kimberly Suazo"
full = full.split(" ")
p full 

original_first_name = full[0]
p original_first_name
original_last_name = full[1]
p original_last_name

